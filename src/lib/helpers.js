const bcrypt = require('bcryptjs');

const helpers = {};

helpers.encryptPassword = async (password) => {
    const salt = await bcrypt.genSalt(10);
    const finalpass = await bcrypt.hash(password, salt);
    console.log(finalpass);
    return finalpass;
};

helpers.matchPassword = async (password, savedPassword) => {
    try{
    return await bcrypt.compare(password, savedPassword);
    } catch (e) {
        console.log(e);
    }
}

module.exports = helpers;