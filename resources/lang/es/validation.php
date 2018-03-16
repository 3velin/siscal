<? php
regresar [
    / *
    | ------------------------------------------------- -------------------------
    | Líneas de idioma de validación
    | ------------------------------------------------- -------------------------
    |
    | Las siguientes líneas de idioma contienen los mensajes de error predeterminados utilizados por
    | la clase de validador Algunas de estas reglas tienen múltiples versiones tales
    | como el tamaño gobierna Siéntase libre de modificar cada uno de estos mensajes aquí.
    |
    * /
    ' aceptado '              =>  ' El campo: atributo debe ser aceptado. ' ,
    ' active_url '            =>  ' El campo: atributo no es una URL válida. ' ,
    ' after '                 =>  ' El campo: atributo debe ser una fecha posterior a: fecha. ' ,
    ' after_or_equal '        =>  ' El campo: atributo debe ser una fecha posterior o igual a: date. ' ,
    ' alpha '                 =>  ' El campo: atributo sólo puede contener letras. ' ,
    ' alpha_dash '            =>  ' El campo: atributo sólo puede contener letras, números y guiones (az, 0-9, -_). ' ,
    ' alpha_num '             =>  ' El campo: atributo sólo puede contener letras y números. ' ,
    ' array '                 =>  ' El campo: atributo debe ser un array. ' ,
    ' antes '                =>  ' El campo: atributo debe ser una fecha anterior a: fecha. ' ,
    ' before_or_equal '       =>  ' El campo: atributo debe ser una fecha anterior o igual a: date. ' ,
    ' entre '               => [
        ' numeric '  =>  ' El campo: atributo debe ser un valor entre: min y: max. ' ,
        ' archivo '     =>  ' El archivo: atributo debe pesar entre: min y: max kilobytes. ' ,
        ' string '   =>  ' El campo: atributo debe contener entre: min y: max caracteres. ' ,
        ' array '    =>  ' El campo: atributo debe contener entre: min y: elementos max. ' ,
    ],
    ' boolean '               =>  ' El campo: atributo debe ser o falso. ' ,
    ' confirmado '             =>  ' El campo confirmación de: atributo no coincide. ' ,
    ' date '                  =>  ' El campo: atributo no corresponde con una fecha válida. ' ,
    ' date_format '           =>  ' El campo: atributo no corresponde con el formato de fecha: formato. ' ,
    ' different '             =>  ' Los campos: atributo y: otros deben ser diferentes. ' ,
    ' digits '                =>  ' El campo: atributo debe ser un número de: dígitos dígitos. ' ,
    ' digits_between '        =>  ' El campo: atributo debe contener entre: min y: max dígitos. ' ,
    ' dimensions '            =>  ' El campo: atributo tiene medidas inválidas. ' ,
    ' distinct '              =>  ' El campo: atributo tiene un valor duplicado. ' ,
    ' email '                 =>  ' El campo: atributo debe ser una dirección de correo válido. ' ,
    ' exists '                =>  ' El campo: atributo seleccionado no existe. ' ,
    ' file '                  =>  ' El campo: atributo debe ser un archivo. ' ,
    ' filled '                =>  ' El campo: atributo debe tener algún valor. ' ,
    ' imagen '                 =>  ' El campo: atributo debe ser una imagen. ' ,
    ' in '                    =>  ' El campo: atributo es inválido. ' ,
    ' in_array '              =>  ' El campo: atributo no existe en: otro. ' ,
    ' integer '               =>  ' El campo: atributo debe ser un número entero. ' ,
    ' ip '                    =>  ' El campo: atributo debe ser una dirección IP válida. ' ,
    ' ipv4 '                  =>  ' El campo: atributo debe ser una dirección IPv4 válida. ' ,
    ' ipv6 '                  =>  ' El campo: atributo debe ser una dirección IPv6 válida. ' ,
    ' json '                  =>  ' El campo: atributo debe ser una cadena de texto JSON válida. ' ,
    ' max '                   => [
        ' numeric '  =>  ' El campo: atributo no debe ser ser mayor a: max. ' ,
        ' file '     =>  ' El archivo: atributo debe pesar más de: max kilobytes. ' ,
        ' string '   =>  ' El campo: atributo no debe contener más de: max caracteres. ' ,
        ' array '    =>  ' El campo: atributo no debe contener más de: max. ' ,
    ],
    ' mimes '                 =>  ' El campo: atributo debe ser un archivo de tipo: valores. ' ,
    ' mimetypes '             =>  ' El campo: atributo debe ser un archivo de tipo: valores. ' ,
    ' min '                   => [
        ' numeric '  =>  ' El campo: atributo debe tener al menos: min. ' ,
        ' file '     =>  ' El archivo: atributo debe pesar al menos: min kilobytes. ' ,
        ' string '   =>  ' El campo: atributo debe contener al menos: min caracteres. ' ,
        ' array '    =>  ' El campo: attribute debe contener al menos: min elementos. ' ,
    ],
    ' not_in '                =>  ' El campo: atributo seleccionado es inválido. ' ,
    ' numeric '               =>  ' El campo: atributo debe ser un número. ' ,
    ' presente '               =>  ' El campo: atributo debe estar presente. ' ,
    ' regex '                 =>  ' El formato del campo: atributo es inválido. ' ,
    ' required '              =>  ' El campo: attribute es obligatorio. ' ,
    ' required_if '           =>  ' El campo: atributo es obligatorio cuando el campo: otros es: valor. ' ,
    ' required_unless '       =>  ' El campo: atributo es requerido a menos que: other se encuentre en: values. ' ,
    ' required_with '         =>  ' El campo: attribute es obligatorio cuando: values ​​está presente. ' ,
    ' required_with_all '     =>  ' El campo: attribute es obligatorio cuando: values ​​está presente. ' ,
    ' required_without '      =>  ' El campo: attribute es obligatorio cuando: values ​​no está presente. ' ,
    ' required_without_all '  =>  ' El campo: atributo es obligatorio cuando ninguno de los campos: valores está presente. ' ,
    ' same '                  =>  ' Los campos: atributo y: otro debería coincidir. ' ,
    ' tamaño '                  => [
        ' numeric '  =>  ' El campo: atributo debe ser: tamaño. ' ,
        ' archivo '     =>  ' El archivo: atributo debe pesar: tamaño kilobytes. ' ,
        ' string '   =>  ' El campo: attribute debe contener: tamaño caracteres. ' ,
        ' array '    =>  ' El campo: attribute debe contener: tamaño elementos. ' ,
    ],
    ' string '                =>  ' El campo: atributo debe ser una cadena de caracteres. ' ,
    ' timezone '              =>  ' El campo: attribute debe contener una zona válida. ' ,
    ' unique '                =>  ' El valor del campo: atributo ya está en uso. ' ,
    ' subido '              =>  ' El campo: atributo obtenido al subir. ' ,
    ' url '                   =>  ' El formato del campo: atributo es inválido. ' ,
    / *
    | ------------------------------------------------- -------------------------
    | Líneas de lenguaje de validación personalizadas
    | ------------------------------------------------- -------------------------
    |
    | Aquí puede especificar mensajes de validación personalizados para atributos usando el
    | convención "attribute.rule" para nombrar las líneas. Esto hace que sea rápido
    | especifique una línea de idioma personalizada específica para una regla de atributo determinada.
    |
    * /
    ' personalizado '  => [
        ' nombre-atributo '  => [
            ' rule-name '  =>  ' custom-message ' ,
        ],
    ],
    / *
    | ------------------------------------------------- -------------------------
    | Atributos de validación personalizados
    | ------------------------------------------------- -------------------------
    |
    | Las siguientes líneas de idioma se usan para intercambiar marcadores de posición de atributos
    | con algo más amigable para el lector, como la dirección de correo electrónico
    | de "correo electrónico". Esto simplemente nos ayuda a hacer que los mensajes sean un poco más limpios.
    |
    * /
    ' atributos '  => [],
];