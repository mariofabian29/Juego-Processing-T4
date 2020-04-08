float posX[];
float posY[];

int estado[];

int puntaje = 0;

float vel;
float distancia = 0;



void setup()
{
  size(400, 400);

  posX = new float[100];
  posY = new float[100];
  estado = new int[100];

  for (int i=0; i<100; i++)
  {
    posX[i]=random(0, 400);
    posY[i]=random(0, 100);
    estado[i]=1;
  }
}

void draw()
{
  background(#000000);

  for (int i=0; i<100; i++)
  {
    vel = random(0.5, 5);
    posY[i] = posY[i]+vel;
  }

  fill(#003EF2);

  for (int i=0; i<100; i++)
  {
    if (estado[i]==1)
    {
      ellipse(posX[i], posY[i], 20, 20);
    }
  }

  for (int i=0; i<100; i++)
  {
    if (mousePressed==true)
    {
      distancia=dist(mouseX, mouseY, posX[i], posY[i]);
      if (distancia<=20)
      {
        estado[i]=0;
      }
    }
  }

  fill(23, 100, 130);
  text("Puntos: "+puntaje, 30, 40);

  puntaje=0;
  for (int i=0; i<100; i++)
  {
    if (estado[i]==0)
    {
      puntaje++;
    }
  }
}
