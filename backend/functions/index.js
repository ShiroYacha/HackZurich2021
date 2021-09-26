const functions = require("firebase-functions");
const admin = require('firebase-admin');

admin.initializeApp({});
let db = admin.firestore();

exports.findCommunityByCode = functions.https.onCall(async (data, context) => {
    functions.logger.info(`findCommunityByCode: data = ${JSON.stringify(data)}`, {structuredData: true});
    let communities = await db.collection('communities').where('invitation_code', '==', data.code).get();
    if(communities.empty || communities.docs.length > 1){
        return null;
    }
    let community = communities.docs[0];
    return { id: community.id, ...community.data() };
})