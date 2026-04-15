# FaunaQROO2

Proyecto backend con NestJS y Prisma usando MySQL.

## Tecnologias

- NestJS
- Prisma
- MySQL
- TypeScript

## Configuracion

1. Instala las dependencias:

```bash
npm install
```

2. Crea tu archivo `.env` a partir de `.env.example`.

3. Asegurate de tener una base de datos MySQL llamada `faunaqroo2`.

## Variable de entorno

```env
DATABASE_URL="mysql://usuario:password@localhost:3306/faunaqroo2"
```

## Prisma

El proyecto define estas tablas:

- `usuarios`
- `especies`
- `avistamientos`

La relacion principal es de `especies` a `avistamientos` en formato 1 a N.

## Migraciones

Para aplicar las migraciones en desarrollo:

```bash
npx prisma migrate dev
```

## Ejecutar el proyecto

```bash
npm run start:dev
```
