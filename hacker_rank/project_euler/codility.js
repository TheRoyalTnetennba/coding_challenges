function solution() {
    // write your code in JavaScript (Node.js 6.4.0)
    //
    // you can access DOM Tree using DOM Object Model:
    //    document.getElementById
    // or using jQuery:
    //    $('some_tag')
    //
    // you can write to stdout for debugging purposes, e.g.
    // console.log('this is a debug message');
    const letter_dots = 'abcdefghijklmnopqrstuvwxyz.'.split('');
    const digits = '1234567890'.split('');
    if (document.getElementById('type_person').checked) {
    	if (document.getElementById('first_name').value.length === 0) {
    		return false;
    	}
    	if (document.getElementById('last_name').value.length === 0) {
    		return false;
    	}
    	let email = document.getElementById('email').value;
    	if (email.length < 1) {
    		return false;
    	}
    	let num_ats = 0;
    	for (let i = 1; i < email.length - 1; i++) {
    		if (email[i] === '@') {
    			num_ats += 1;
    		} else if (!letter_dots.includes(email[i])) {
    			return false;
    		}
    	}
    	if (num_ats !== 1) {
    		return false;
    	}
    	email = email.split('@');
    	if (email[0].length < 1 || email[0].length > 64) {
    		return false;
    	}
    	if (email[1].length < 1 || email[1].length > 64) {
    		return false;
    	}
    } else {
    	if (document.getElementById('company_name').value.length === 0) {
    		return false;
    	}
    	const phone = document.getElementById('phone').value;
    	if (phone.length < 6) {
    		return false;
    	}
    	let num_digits = 0;
    	for (let i = 0; i < phone.length; i++) {
    		if (digits.includes(phone[i])) {
    			num_digits += 1;
    		} else if (phone[i] !== ' ' && phone[i] !== '-') {
    			return false;
    		}
    	}
    	if (num_digits < 6) {
    		return false;
    	}
    }
    return true;

}