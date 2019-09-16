/// @description 

if(alpha > 0)
{
    alarm[1] = 1;
    alpha -= (speedAlpha / 2);
}
else
{
    alpha = 0;
    instance_destroy();
}

alpha = clamp(alpha, 0, 1);