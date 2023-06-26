# <center><strong>TERRAFORM</strong> ![Azure Icon](https://goliathtechnologies.com/wp-content/uploads/2021/11/AVD-cloud.png)</center>

Para realizar el proceso de despliegue es necesario descargar instalar las siguientes herramientas:

- [Haz clic para descargar e instalar Terraform](https://www.terraform.io/downloads)
- [Haz clic para descargar e instalar Azure Cli](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)

Una vez tenga instalado las herramientas anteriores, siga las siguientes instrucciones:

1. Haz clic para ingresar [Azure Portal](https://portal.azure.com) realice el siguiente paso a paso:
    - Configurar su dominio en azure ad domain services (no es necesario si se usa azure active directory solo cuando se usa azure directory ad o integraciones con fslogix).

    - Otorgar permiso al administrador en Azure directory en la opción de roles and administrators los permisos asignar son:
        - Global administrator 
        - User administrator

    - Registrar el tenant ID  en la página de consentimiento de Windows Virtual Desktop, para dar permiso a wvd a nuestro directorio en la URL https://rdweb.wvd.microsoft.com/  (se debe registrar tanto para la opción server y client).

    - El administrador debe estar registrado en la opción de applications, Windows Virtual Desktop, user and groups como TenantCreator signo asignarle el rol.

2. Configurar su dominio en Azure ad domain services (no es necesario si se usa azure active directory solo cuando se usa azure directory ad o integraciones con fslogix).

3. Iniciar sesión de forma interactiva por medio de Azure cli ejecutando el siguiente comando:

    - az login

4. Ingresar en la terminal ala ruta donde está sus archivos, ejecute las siguientes instrucciones:

- Prepara tu directorio de trabajo para otros comandos ejecutando en la terminal:
    - terraform init

- Reformatee su configuración en el estilo estándar ejecutando en la terminal:
    - terraform fmt

- Compruebe si la configuración es válida ejecutando en la terminal:
    - terraform validate

- Verifique la configuración que se aprovisionara o los cambios ejecutando en la terminal:
    - terraform plan

- Crear o actualizar la infraestructura ejecutando en la terminal:
    - terraform apply

5. Una vez ya se realizó el despliegue con terraform sé debe ingresar a 
[Azure Portal](https://portal.azure.com)  y realizar las siguientes acciones:

    - Agregar el usuario a Azure virtual desktop applications groups debe quedar con el permiso:
        - Desktop Virtualization User
    
    - Es necesario agregarlo los usuarios en el resource groups donde están las vm y darles permiso como:
        - Virtual Machine User Login

    - Activar en los Host-pool las actualizaciones programadas de los agentes fuera del horario laboral de los clientes.

    - Configurar una alerta de costo para supervisar que no supere el presupuesto estimado.           

<strong>Nota:<strong>
De ser necesario eliminará la infraestructura actual, puede ejecutar el comando terraform destroy

