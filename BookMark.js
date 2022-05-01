'use strict';
/* LICENSE: https://raw.githubusercontent.com/Starscade/BookMark/main/LICENSE */
class BookMark{
	constructor(txt=''){
		this.TXT=txt;
		this.toHTML=()=>{
			const REGX=[
				[
					/<script([^>]*)>(.*)<\/script>/g,
					/(\.\.\.)|…/g,
					/\*\*([^*]*)\*\*/g,
					/\*([^*]*)\*/g,
					/_([^_]*)_/g,
					/~([^~]*)~/g,
					/(?<![=/])"([^"]*)"/g,
					/"/g,
					/`/g,
					/'/g,
					/--/g,
					/\s\s+/g,
					/(\d)(st|nd|rd|th)/g,
					/<([\w.]*)@(\w*)\.(\w*)>/g,
					/<([\w#!:.,?+=&%@!\-\/]*) ([^>]*) _>/g,
					/<(?!a href)([\w#!:.,?+=&%@!\-\/]*) ([^>]*)>/g,
					/{/g,
					/}/g
				],[
					'<code>$2</code>',
					' . . . ',
					'<b>$1</b>',
					'<i>$1</i>',
					'<u>$1</u>',
					'<s>$1</s>',
					'“$1”',
					'“',
					'‘',
					'’',
					'—',
					' ',
					'$1<sup>$2</sup>',
					'<a href="mailto:$1@$2.$3">$1@$2.$3</a>',
					'<a href="$1"target="_Blank">$2</a>',
					'<a href="$1">$2</a>',
					'<code>',
					'</code>'
				]
			];
			let htm='';
			const paragraph_array=this.TXT.split(/\n/g,);
			paragraph_array.forEach((line,i)=>{
				paragraph_array[i]=line.trim();
				switch(paragraph_array[i][0]){
					case'#':
						const hx=paragraph_array[i].match(/#/g).length;
						paragraph_array[i]=paragraph_array[i].replace(/^#+\s*(.*)/g,'<h'+hx+'>$1</h'+hx+'>');
						break;
					case'>':
						paragraph_array[i]=paragraph_array[i].replace(/^>\s*(.*)/g,'<blockquote>$1</blockquote>');
						break;
					case'+':
						if(paragraph_array[i]==='+++'){
							paragraph_array[i]='<h3>✶ ✶ ✶</h3>';
							break;
						}
					case'=':
						if(paragraph_array[i]==='==='){
							paragraph_array[i]='<hr>';
							break;
						}
					default:
						if(paragraph_array[i]==''){
							paragraph_array[i]='<br>';
						}else{
							paragraph_array[i]=paragraph_array[i].replace(/(.*)/g,'<p>$1</p>').replace(/<p><\/p>/g,'');
						}
				}
				REGX[0].forEach((p,x)=>{
					paragraph_array[i]=paragraph_array[i].replace(p,REGX[1][x]);
				});
				htm+=paragraph_array[i];
			});
			return htm.trim();
		}
	}
}
