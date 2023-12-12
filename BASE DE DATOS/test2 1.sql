
--
-- Base de datos: `test2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anamnesis1`
--

CREATE TABLE `anamnesis1` (
  `IdAnamesis` int(10) UNSIGNED NOT NULL,
  `MotivoConsulta` varchar(50) NOT NULL,
  `EnfermedadActual` varchar(100) NOT NULL,
  `Cepillo` tinyint(1) NOT NULL,
  `HiloDental` tinyint(1) NOT NULL,
  `Mondadientes` tinyint(1) NOT NULL,
  `Frecuencia` int(10) UNSIGNED DEFAULT NULL,
  `Tecnica` varchar(10) DEFAULT NULL,
  `CepillaLengua` tinyint(1) NOT NULL,
  `Flour` tinyint(1) NOT NULL,
  `Cuando` varchar(10) DEFAULT NULL,
  `Via` varchar(10) DEFAULT NULL,
  `Paciente_IdPaciente` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `antecedente_no_patologico`
--

CREATE TABLE `antecedente_no_patologico` (
  `IdAnteceNoPatol` int(10) UNSIGNED NOT NULL,
  `RespiracionBucal` tinyint(1) NOT NULL,
  `Chupon` tinyint(1) NOT NULL,
  `Fumador` tinyint(1) NOT NULL,
  `MasticaCoca` tinyint(1) NOT NULL,
  `Biberon` tinyint(1) NOT NULL,
  `SuccionDedo` tinyint(1) NOT NULL,
  `Onicofagia` tinyint(1) NOT NULL,
  `Bebe` tinyint(1) NOT NULL,
  `Bruxismo` tinyint(1) NOT NULL,
  `Otros` tinyint(4) DEFAULT NULL,
  `UltVisitaFecha` date NOT NULL,
  `TipoTratamiento` varchar(20) DEFAULT NULL,
  `Interconsulta` tinyint(1) NOT NULL,
  `Paciente_IdPaciente` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `antecedente_no_patologico`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `antecedente_patologico`
--

CREATE TABLE `antecedente_patologico` (
  `IdAntecePatol` int(10) UNSIGNED NOT NULL,
  `Familiares` varchar(50) DEFAULT NULL,
  `IntervQuirurjuca` tinyint(1) NOT NULL,
  `EnTratamiento` tinyint(1) NOT NULL,
  `MedicacionActual` tinyint(1) NOT NULL,
  `ReaccionAnestecia` tinyint(1) NOT NULL,
  `PostHemorragias` tinyint(1) NOT NULL,
  `CicatrizTardia` tinyint(1) NOT NULL,
  `AlergiasMed` tinyint(1) NOT NULL,
  `DesmayosFrecuentes` tinyint(1) NOT NULL,
  `Embarazada` tinyint(1) NOT NULL,
  `TiempoGestacion` varchar(10) DEFAULT NULL,
  `FechaUMP` date DEFAULT NULL,
  `Paciente_IdPaciente` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--

--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `derecha`
--

CREATE TABLE `derecha` (
  `IdDerecha` int(11) NOT NULL,
  `RelaMolar` varchar(255) NOT NULL,
  `RelaCanina` varchar(255) NOT NULL,
  `RelaAnterior` varchar(255) NOT NULL,
  `LinMedDentad` tinyint(1) DEFAULT NULL,
  `Modelo` varchar(255) NOT NULL,
  `Evaluacion_Oclusion_IdEvaOclu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enfermedad_sistematica`
--

CREATE TABLE `enfermedad_sistematica` (
  `IdEnfSistem` int(10) UNSIGNED NOT NULL,
  `Cardiovasculares` tinyint(1) NOT NULL,
  `Diabetes` tinyint(1) NOT NULL,
  `HepatitisA` tinyint(1) NOT NULL,
  `EnfVenereas` tinyint(4) DEFAULT NULL,
  `Hemofilia` tinyint(1) NOT NULL,
  `FiebreReumatica` tinyint(1) NOT NULL,
  `Alergia` tinyint(1) NOT NULL,
  `HepatitisB` tinyint(1) NOT NULL,
  `TBC` tinyint(1) NOT NULL,
  `EnfInfancia` tinyint(1) NOT NULL,
  `ReumatismoArticular` tinyint(1) NOT NULL,
  `HipertensionArterial` tinyint(1) NOT NULL,
  `SIDA` tinyint(1) NOT NULL,
  `Sifilis` tinyint(1) NOT NULL,
  `Otros` tinyint(4) DEFAULT NULL,
  `Especificaciones` varchar(20) DEFAULT NULL,
  `Paciente_IdPaciente` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluacion_oclusion`
--

CREATE TABLE `evaluacion_oclusion` (
  `IdEvaOclu` int(11) NOT NULL,
  `TipoMordida` varchar(255) NOT NULL,
  `TipoArcoDeBaume` tinyint(1) NOT NULL,
  `Diastemas` varchar(255) NOT NULL,
  `PerdidaEspacio` varchar(255) NOT NULL,
  `DiagLesionAnomalia` varchar(255) NOT NULL,
  `TipoDenticion` varchar(255) NOT NULL,
  `TipDentDetalle` varchar(255) NOT NULL,
  `Higene_Bucal_IdHigeneBucal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examenescomplementariosradiograficos`
--

CREATE TABLE `examenescomplementariosradiograficos` (
  `IdExmCmpRdo` int(11) NOT NULL,
  `Periapical` tinyint(1) NOT NULL,
  `AletaMordida` tinyint(1) NOT NULL,
  `Oclusal` tinyint(1) NOT NULL,
  `Panoramica` tinyint(1) NOT NULL,
  `Otros` tinyint(1) NOT NULL,
  `ExamenPsiquicoMental_IdExmPsiMental` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examenescomplementariostejidoblancos`
--

CREATE TABLE `examenescomplementariostejidoblancos` (
  `IdExamComTej` int(11) NOT NULL,
  `Biopsia` tinyint(1) NOT NULL,
  `CitologiaExfoliativa` tinyint(1) NOT NULL,
  `Otros` tinyint(1) NOT NULL,
  `Observaciones` varchar(255) NOT NULL,
  `ExamenPsiquicoMental_IdExmPsiMental` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examenpsiquicomental`
--

CREATE TABLE `examenpsiquicomental` (
  `IdExmPsiMental` int(11) NOT NULL,
  `Conciencia` varchar(255) NOT NULL,
  `Orientacion` varchar(255) NOT NULL,
  `Percepcion` varchar(255) NOT NULL,
  `Memoria` varchar(255) NOT NULL,
  `AlterConduc` varchar(255) DEFAULT NULL,
  `Paciente_IdPaciente` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examen_clinico`
--

CREATE TABLE `examen_clinico` (
  `IdExamClin` int(10) UNSIGNED NOT NULL,
  `EstadoSalud` varchar(20) NOT NULL,
  `Actitud` varchar(20) NOT NULL,
  `Marcha` varchar(20) NOT NULL,
  `Biotipologia` varchar(20) NOT NULL,
  `Peso` int(10) UNSIGNED NOT NULL,
  `Talla` int(10) UNSIGNED NOT NULL,
  `HabitoPostural` varchar(50) NOT NULL,
  `Paciente_IdPaciente` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examen_craneo`
--

CREATE TABLE `examen_craneo` (
  `IdExamCran` int(10) UNSIGNED NOT NULL,
  `Tipo` varchar(20) NOT NULL,
  `Tamanho` varchar(30) NOT NULL,
  `Forma` varchar(20) NOT NULL,
  `Examen_Clinico_IdExamClin` int(10) UNSIGNED NOT NULL,
  `IdExamClin` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examen_estomatologico`
--

CREATE TABLE `examen_estomatologico` (
  `IdExamEstom` int(10) UNSIGNED NOT NULL,
  `LabiosFrenillos` varchar(150) NOT NULL,
  `Piel` varchar(50) DEFAULT NULL,
  `FrenilloSup` varchar(50) NOT NULL,
  `FrenilloInf` varchar(50) NOT NULL,
  `MucosaYugal` varchar(150) NOT NULL,
  `Lengua` varchar(150) NOT NULL,
  `PisoBoca` varchar(50) DEFAULT NULL,
  `Paladar` varchar(150) NOT NULL,
  `Encias` varchar(150) NOT NULL,
  `RebordeAlveolares` varchar(150) DEFAULT NULL,
  `Examen_Clinico_IdExamClin` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examen_facial`
--

CREATE TABLE `examen_facial` (
  `IdExamFacial` int(10) UNSIGNED NOT NULL,
  `Tipo` varchar(18) NOT NULL,
  `Expresion` varchar(25) NOT NULL,
  `Perfil` varchar(15) NOT NULL,
  `Facies` varchar(30) NOT NULL,
  `Simetria` varchar(20) DEFAULT NULL,
  `Armonia` varchar(30) DEFAULT NULL,
  `TercioCerebral` varchar(100) DEFAULT NULL,
  `TercioRespiratorio` varchar(100) DEFAULT NULL,
  `TercioDigestivo` varchar(100) DEFAULT NULL,
  `ExamenATM` varchar(200) NOT NULL,
  `ExamenGanglios` varchar(200) NOT NULL,
  `Examen_Clinico_IdExamClin` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ficha_clinica`
--

CREATE TABLE `ficha_clinica` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Fecha` date NOT NULL,
  `Area` varchar(25) NOT NULL,
  `Alumnos` varchar(200) NOT NULL,
  `Diagnostico` varchar(25) NOT NULL,
  `Tratamiento` varchar(50) NOT NULL,
  `PZA` int(10) UNSIGNED NOT NULL,
  `Indicaciones` varchar(100) DEFAULT NULL,
  `Recomendaciones` varchar(100) DEFAULT NULL,
  `Medicacion` varchar(100) NOT NULL,
  `Observacion` varchar(100) DEFAULT NULL,
  `Evolucion` varchar(100) DEFAULT NULL,
  `ProxCita` date DEFAULT NULL,
  `Docente` varchar(100) NOT NULL,
  `Historia_Clinica_Estomatologia_FichaNo` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `higene_bucal`
--

CREATE TABLE `higene_bucal` (
  `IdHigeneBucal` int(11) NOT NULL,
  `CalculoDental` varchar(255) NOT NULL,
  `Halitosis` varchar(255) NOT NULL,
  `Saburra` varchar(255) NOT NULL,
  `PlacaBacteriana` varchar(255) NOT NULL,
  `MateriaAlba` varchar(255) NOT NULL,
  `Evaluacion_Bucal` varchar(255) NOT NULL,
  `Paciente_IdPaciente` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_inicio`
--

CREATE TABLE `historial_inicio` (
  `Id` int(10) UNSIGNED NOT NULL,
  `IdUsuario` int(10) UNSIGNED NOT NULL,
  `Nombre` longtext DEFAULT NULL,
  `Apellido` longtext DEFAULT NULL,
  `Fecha` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historia_clinica_estomatologia`
--

CREATE TABLE `historia_clinica_estomatologia` (
  `FichaNo` int(10) UNSIGNED NOT NULL,
  `CodigoRegistro` int(10) UNSIGNED NOT NULL,
  `FechaAdmision` date NOT NULL,
  `Asignado` varchar(100) NOT NULL,
  `Usuarios_ID` int(10) UNSIGNED NOT NULL,
  `Paciente_IdPaciente` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `izquierda`
--

CREATE TABLE `izquierda` (
  `IdIzquierda` int(11) NOT NULL,
  `RelaMolar` varchar(255) NOT NULL,
  `RelaCanina` varchar(255) NOT NULL,
  `RelaAnterior` varchar(255) NOT NULL,
  `LinMedDentad` tinyint(1) DEFAULT NULL,
  `RelaMolarBaume` varchar(255) NOT NULL,
  `Modelo` varchar(255) NOT NULL,
  `Evaluacion_Oclusion_IdEvaOclu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE `paciente` (
  `IdPaciente` int(10) UNSIGNED NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido1` varchar(25) NOT NULL,
  `Apellido2` varchar(25) DEFAULT NULL,
  `FechaNacimiento` date NOT NULL,
  `Telefono` int(10) UNSIGNED NOT NULL,
  `Estado_Civil` varchar(20) NOT NULL,
  `Ocupacion` varchar(40) NOT NULL,
  `Genero` varchar(15) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  `Procedencia` varchar(50) NOT NULL,
  `Disponible_Manhana` varchar(10) DEFAULT NULL,
  `Disponible_Tarde` varchar(10) DEFAULT NULL,
  `Verificado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantratamiento`
--

CREATE TABLE `plantratamiento` (
  `IdPlanTratam` int(11) NOT NULL,
  `Emergencia` tinyint(1) NOT NULL,
  `Preventiva` tinyint(1) NOT NULL,
  `Ortodoncia` tinyint(1) NOT NULL,
  `OperaYEndodon` tinyint(1) NOT NULL,
  `Odontopediatria` tinyint(1) NOT NULL,
  `ProtesisRemovible` tinyint(1) NOT NULL,
  `ProtesisFija` tinyint(1) NOT NULL,
  `Cirujia` tinyint(1) NOT NULL,
  `ExamenPsiquicoMental_IdExmPsiMental` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Estructura de tabla para la tabla `presupuesto`
--

CREATE TABLE `presupuesto` (
  `IdPresupuesto` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `NroRecibo` int(11) NOT NULL,
  `Debe` int(11) DEFAULT NULL,
  `Haber` int(11) DEFAULT NULL,
  `Saldo` int(11) DEFAULT NULL,
  `EMaterial` varchar(255) DEFAULT NULL,
  `TratamientoPresupuesto_IdTratPres` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrodentaldenticionpermanente`
--

CREATE TABLE `registrodentaldenticionpermanente` (
  `IdRegDenDtcPrm` int(11) NOT NULL,
  `Numero` decimal(28,0) UNSIGNED NOT NULL,
  `Color` varchar(255) NOT NULL,
  `Paciente_IdPaciente` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrodentaldenticiontemporaria`
--

CREATE TABLE `registrodentaldenticiontemporaria` (
  `IdRegDenDtcTmp` int(11) NOT NULL,
  `Numero` decimal(28,0) UNSIGNED NOT NULL,
  `Color` varchar(255) NOT NULL,
  `Paciente_IdPaciente` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `signo_vital`
--

CREATE TABLE `signo_vital` (
  `IdSigVital` int(10) UNSIGNED NOT NULL,
  `PSA1` int(10) UNSIGNED NOT NULL,
  `Pulso` int(10) UNSIGNED NOT NULL,
  `TempBucal` int(10) UNSIGNED NOT NULL,
  `FreqRespiracion` int(10) UNSIGNED NOT NULL,
  `Anamnesis_IdAnamesis` int(10) UNSIGNED NOT NULL,
  `FechaEmision` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tratamiento`
--

CREATE TABLE `tratamiento` (
  `IdTratamiento` int(11) NOT NULL,
  `PlanTratamiento` varchar(255) NOT NULL,
  `Costo` int(11) NOT NULL,
  `Paciente` varchar(255) NOT NULL,
  `Telefono` int(11) NOT NULL,
  `Direccion` varchar(255) NOT NULL,
  `TratamientoPresupuesto_IdTratPres` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tratamientopresupuesto`
--

CREATE TABLE `tratamientopresupuesto` (
  `IdTratPres` int(11) NOT NULL,
  `Paciente_IdPaciente` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `IdUsuario` int(10) UNSIGNED NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Apellido1` varchar(25) NOT NULL,
  `Apellido2` varchar(25) DEFAULT NULL,
  `Email` varchar(50) NOT NULL,
  `Contrasenha` varchar(15) NOT NULL,
  `Telefono` int(10) UNSIGNED NOT NULL,
  `Rol` varchar(50) NOT NULL,
  `VerificacionDeCreacion` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `anamnesis1`
--
ALTER TABLE `anamnesis1`
  ADD PRIMARY KEY (`IdAnamesis`),
  ADD KEY `Anamnesis_Paciente_FK` (`Paciente_IdPaciente`);

--
-- Indices de la tabla `antecedente_no_patologico`
--
ALTER TABLE `antecedente_no_patologico`
  ADD PRIMARY KEY (`IdAnteceNoPatol`),
  ADD KEY `Antecedentes_No_Patologicos_Paciente_FK` (`Paciente_IdPaciente`);

--
-- Indices de la tabla `antecedente_patologico`
--
ALTER TABLE `antecedente_patologico`
  ADD PRIMARY KEY (`IdAntecePatol`),
  ADD KEY `Antecedentes_Patologicos_Paciente_FK` (`Paciente_IdPaciente`);

--
-- Indices de la tabla `derecha`
--
ALTER TABLE `derecha`
  ADD PRIMARY KEY (`IdDerecha`),
  ADD KEY `fk_Derecha_Evaluacion_Oclusion` (`Evaluacion_Oclusion_IdEvaOclu`);

--
-- Indices de la tabla `enfermedad_sistematica`
--
ALTER TABLE `enfermedad_sistematica`
  ADD PRIMARY KEY (`IdEnfSistem`),
  ADD KEY `Enfermedades_Sistematicas_Paciente_FK` (`Paciente_IdPaciente`);

--
-- Indices de la tabla `evaluacion_oclusion`
--
ALTER TABLE `evaluacion_oclusion`
  ADD PRIMARY KEY (`IdEvaOclu`),
  ADD KEY `fk_Evaluacion_Oclusion_Higene_Bucal` (`Higene_Bucal_IdHigeneBucal`);

--
-- Indices de la tabla `examenescomplementariosradiograficos`
--
ALTER TABLE `examenescomplementariosradiograficos`
  ADD PRIMARY KEY (`IdExmCmpRdo`),
  ADD KEY `ExmCmpRdo_ExmPsiMental_FK` (`ExamenPsiquicoMental_IdExmPsiMental`);

--
-- Indices de la tabla `examenescomplementariostejidoblancos`
--
ALTER TABLE `examenescomplementariostejidoblancos`
  ADD PRIMARY KEY (`IdExamComTej`),
  ADD KEY `ExmComTej_ExmPsiMental_FK` (`ExamenPsiquicoMental_IdExmPsiMental`);

--
-- Indices de la tabla `examenpsiquicomental`
--
ALTER TABLE `examenpsiquicomental`
  ADD PRIMARY KEY (`IdExmPsiMental`),
  ADD KEY `ExmPsiMental_Paciente_FK` (`Paciente_IdPaciente`);

--
-- Indices de la tabla `examen_clinico`
--
ALTER TABLE `examen_clinico`
  ADD PRIMARY KEY (`IdExamClin`),
  ADD KEY `Examen_Clinico_Paciente_FK` (`Paciente_IdPaciente`);

--
-- Indices de la tabla `examen_craneo`
--
ALTER TABLE `examen_craneo`
  ADD PRIMARY KEY (`IdExamCran`),
  ADD KEY `Examen_Craneo_Examen_Clinico_FK` (`Examen_Clinico_IdExamClin`);

--
-- Indices de la tabla `examen_estomatologico`
--
ALTER TABLE `examen_estomatologico`
  ADD PRIMARY KEY (`IdExamEstom`),
  ADD KEY `Examen_Estomatologico_Examen_Clinico_FK` (`Examen_Clinico_IdExamClin`);

--
-- Indices de la tabla `examen_facial`
--
ALTER TABLE `examen_facial`
  ADD PRIMARY KEY (`IdExamFacial`),
  ADD KEY `Examen_Facial_Examen_Clinico_FK` (`Examen_Clinico_IdExamClin`);

--
-- Indices de la tabla `ficha_clinica`
--
ALTER TABLE `ficha_clinica`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Ficha_Clinica_Historia_Clinica_Estomatologia_FK` (`Historia_Clinica_Estomatologia_FichaNo`);

--
-- Indices de la tabla `higene_bucal`
--
ALTER TABLE `higene_bucal`
  ADD PRIMARY KEY (`IdHigeneBucal`),
  ADD KEY `fk_Higene_Bucal_Paciente` (`Paciente_IdPaciente`);

--
-- Indices de la tabla `historial_inicio`
--
ALTER TABLE `historial_inicio`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `historia_clinica_estomatologia`
--
ALTER TABLE `historia_clinica_estomatologia`
  ADD PRIMARY KEY (`FichaNo`),
  ADD KEY `Historia_Clinica_Estomatologia_Paciente_FK` (`Paciente_IdPaciente`),
  ADD KEY `Historia_Clinica_Estomatologia_Usuarios_FK` (`Usuarios_ID`);

--
-- Indices de la tabla `izquierda`
--
ALTER TABLE `izquierda`
  ADD PRIMARY KEY (`IdIzquierda`),
  ADD KEY `fk_Izquierda_Evaluacion_Oclusion` (`Evaluacion_Oclusion_IdEvaOclu`);

--
-- Indices de la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`IdPaciente`);

--
-- Indices de la tabla `plantratamiento`
--
ALTER TABLE `plantratamiento`
  ADD PRIMARY KEY (`IdPlanTratam`),
  ADD KEY `PlanTratam_ExmPsiMental_FK` (`ExamenPsiquicoMental_IdExmPsiMental`);

--
-- Indices de la tabla `presupuesto`
--
ALTER TABLE `presupuesto`
  ADD PRIMARY KEY (`IdPresupuesto`),
  ADD KEY `Presup_TratPres_FK` (`TratamientoPresupuesto_IdTratPres`);

--
-- Indices de la tabla `registrodentaldenticionpermanente`
--
ALTER TABLE `registrodentaldenticionpermanente`
  ADD PRIMARY KEY (`IdRegDenDtcPrm`),
  ADD KEY `RegDenDtcPrm_Paciente_FK` (`Paciente_IdPaciente`);

--
-- Indices de la tabla `registrodentaldenticiontemporaria`
--
ALTER TABLE `registrodentaldenticiontemporaria`
  ADD PRIMARY KEY (`IdRegDenDtcTmp`),
  ADD KEY `RegDenDtcTmp_Paciente_FK` (`Paciente_IdPaciente`);

--
-- Indices de la tabla `signo_vital`
--
ALTER TABLE `signo_vital`
  ADD PRIMARY KEY (`IdSigVital`),
  ADD KEY `Signos_Vitales_Anamnesis_FK` (`Anamnesis_IdAnamesis`);

--
-- Indices de la tabla `tratamiento`
--
ALTER TABLE `tratamiento`
  ADD PRIMARY KEY (`IdTratamiento`),
  ADD KEY `Trat_TratPres_FK` (`TratamientoPresupuesto_IdTratPres`);

--
-- Indices de la tabla `tratamientopresupuesto`
--
ALTER TABLE `tratamientopresupuesto`
  ADD PRIMARY KEY (`IdTratPres`),
  ADD KEY `TratPres_Paciente_FK` (`Paciente_IdPaciente`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`IdUsuario`);

--
-- Indices de la tabla `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `anamnesis1`
--
ALTER TABLE `anamnesis1`
  MODIFY `IdAnamesis` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `antecedente_no_patologico`
--
ALTER TABLE `antecedente_no_patologico`
  MODIFY `IdAnteceNoPatol` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `antecedente_patologico`
--
ALTER TABLE `antecedente_patologico`
  MODIFY `IdAntecePatol` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `derecha`
--
ALTER TABLE `derecha`
  MODIFY `IdDerecha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `enfermedad_sistematica`
--
ALTER TABLE `enfermedad_sistematica`
  MODIFY `IdEnfSistem` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `evaluacion_oclusion`
--
ALTER TABLE `evaluacion_oclusion`
  MODIFY `IdEvaOclu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `examenescomplementariosradiograficos`
--
ALTER TABLE `examenescomplementariosradiograficos`
  MODIFY `IdExmCmpRdo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `examenescomplementariostejidoblancos`
--
ALTER TABLE `examenescomplementariostejidoblancos`
  MODIFY `IdExamComTej` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `examenpsiquicomental`
--
ALTER TABLE `examenpsiquicomental`
  MODIFY `IdExmPsiMental` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `examen_clinico`
--
ALTER TABLE `examen_clinico`
  MODIFY `IdExamClin` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `examen_craneo`
--
ALTER TABLE `examen_craneo`
  MODIFY `IdExamCran` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `examen_estomatologico`
--
ALTER TABLE `examen_estomatologico`
  MODIFY `IdExamEstom` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `examen_facial`
--
ALTER TABLE `examen_facial`
  MODIFY `IdExamFacial` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ficha_clinica`
--
ALTER TABLE `ficha_clinica`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `higene_bucal`
--
ALTER TABLE `higene_bucal`
  MODIFY `IdHigeneBucal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `historial_inicio`
--
ALTER TABLE `historial_inicio`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT de la tabla `historia_clinica_estomatologia`
--
ALTER TABLE `historia_clinica_estomatologia`
  MODIFY `FichaNo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `izquierda`
--
ALTER TABLE `izquierda`
  MODIFY `IdIzquierda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `paciente`
--
ALTER TABLE `paciente`
  MODIFY `IdPaciente` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243654655;

--
-- AUTO_INCREMENT de la tabla `plantratamiento`
--
ALTER TABLE `plantratamiento`
  MODIFY `IdPlanTratam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `presupuesto`
--
ALTER TABLE `presupuesto`
  MODIFY `IdPresupuesto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `registrodentaldenticionpermanente`
--
ALTER TABLE `registrodentaldenticionpermanente`
  MODIFY `IdRegDenDtcPrm` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `registrodentaldenticiontemporaria`
--
ALTER TABLE `registrodentaldenticiontemporaria`
  MODIFY `IdRegDenDtcTmp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `signo_vital`
--
ALTER TABLE `signo_vital`
  MODIFY `IdSigVital` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tratamiento`
--
ALTER TABLE `tratamiento`
  MODIFY `IdTratamiento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tratamientopresupuesto`
--
ALTER TABLE `tratamientopresupuesto`
  MODIFY `IdTratPres` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `IdUsuario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9911330;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `anamnesis1`
--
ALTER TABLE `anamnesis1`
  ADD CONSTRAINT `Anamnesis_Paciente_FK` FOREIGN KEY (`Paciente_IdPaciente`) REFERENCES `paciente` (`IdPaciente`);

--
-- Filtros para la tabla `antecedente_no_patologico`
--
ALTER TABLE `antecedente_no_patologico`
  ADD CONSTRAINT `Antecedentes_No_Patologicos_Paciente_FK` FOREIGN KEY (`Paciente_IdPaciente`) REFERENCES `paciente` (`IdPaciente`);

--
-- Filtros para la tabla `antecedente_patologico`
--
ALTER TABLE `antecedente_patologico`
  ADD CONSTRAINT `Antecedentes_Patologicos_Paciente_FK` FOREIGN KEY (`Paciente_IdPaciente`) REFERENCES `paciente` (`IdPaciente`);

--
-- Filtros para la tabla `derecha`
--
ALTER TABLE `derecha`
  ADD CONSTRAINT `fk_Derecha_Evaluacion_Oclusion` FOREIGN KEY (`Evaluacion_Oclusion_IdEvaOclu`) REFERENCES `evaluacion_oclusion` (`IdEvaOclu`);

--
-- Filtros para la tabla `enfermedad_sistematica`
--
ALTER TABLE `enfermedad_sistematica`
  ADD CONSTRAINT `Enfermedades_Sistematicas_Paciente_FK` FOREIGN KEY (`Paciente_IdPaciente`) REFERENCES `paciente` (`IdPaciente`);

--
-- Filtros para la tabla `evaluacion_oclusion`
--
ALTER TABLE `evaluacion_oclusion`
  ADD CONSTRAINT `fk_Evaluacion_Oclusion_Higene_Bucal` FOREIGN KEY (`Higene_Bucal_IdHigeneBucal`) REFERENCES `higene_bucal` (`IdHigeneBucal`);

--
-- Filtros para la tabla `examenescomplementariosradiograficos`
--
ALTER TABLE `examenescomplementariosradiograficos`
  ADD CONSTRAINT `ExmCmpRdo_ExmPsiMental_FK` FOREIGN KEY (`ExamenPsiquicoMental_IdExmPsiMental`) REFERENCES `examenpsiquicomental` (`IdExmPsiMental`);

--
-- Filtros para la tabla `examenescomplementariostejidoblancos`
--
ALTER TABLE `examenescomplementariostejidoblancos`
  ADD CONSTRAINT `ExmComTej_ExmPsiMental_FK` FOREIGN KEY (`ExamenPsiquicoMental_IdExmPsiMental`) REFERENCES `examenpsiquicomental` (`IdExmPsiMental`);

--
-- Filtros para la tabla `examenpsiquicomental`
--
ALTER TABLE `examenpsiquicomental`
  ADD CONSTRAINT `ExmPsiMental_Paciente_FK` FOREIGN KEY (`Paciente_IdPaciente`) REFERENCES `paciente` (`IdPaciente`);

--
-- Filtros para la tabla `examen_clinico`
--
ALTER TABLE `examen_clinico`
  ADD CONSTRAINT `Examen_Clinico_Paciente_FK` FOREIGN KEY (`Paciente_IdPaciente`) REFERENCES `paciente` (`IdPaciente`);

--
-- Filtros para la tabla `examen_craneo`
--
ALTER TABLE `examen_craneo`
  ADD CONSTRAINT `Examen_Craneo_Examen_Clinico_FK` FOREIGN KEY (`Examen_Clinico_IdExamClin`) REFERENCES `examen_clinico` (`IdExamClin`);

--
-- Filtros para la tabla `examen_estomatologico`
--
ALTER TABLE `examen_estomatologico`
  ADD CONSTRAINT `Examen_Estomatologico_Examen_Clinico_FK` FOREIGN KEY (`Examen_Clinico_IdExamClin`) REFERENCES `examen_clinico` (`IdExamClin`);

--
-- Filtros para la tabla `examen_facial`
--
ALTER TABLE `examen_facial`
  ADD CONSTRAINT `Examen_Facial_Examen_Clinico_FK` FOREIGN KEY (`Examen_Clinico_IdExamClin`) REFERENCES `examen_clinico` (`IdExamClin`);

--
-- Filtros para la tabla `ficha_clinica`
--
ALTER TABLE `ficha_clinica`
  ADD CONSTRAINT `Ficha_Clinica_Historia_Clinica_Estomatologia_FK` FOREIGN KEY (`Historia_Clinica_Estomatologia_FichaNo`) REFERENCES `historia_clinica_estomatologia` (`FichaNo`);

--
-- Filtros para la tabla `higene_bucal`
--
ALTER TABLE `higene_bucal`
  ADD CONSTRAINT `fk_Higene_Bucal_Paciente` FOREIGN KEY (`Paciente_IdPaciente`) REFERENCES `paciente` (`IdPaciente`);

--
-- Filtros para la tabla `historia_clinica_estomatologia`
--
ALTER TABLE `historia_clinica_estomatologia`
  ADD CONSTRAINT `Historia_Clinica_Estomatologia_Paciente_FK` FOREIGN KEY (`Paciente_IdPaciente`) REFERENCES `paciente` (`IdPaciente`),
  ADD CONSTRAINT `Historia_Clinica_Estomatologia_Usuarios_FK` FOREIGN KEY (`Usuarios_ID`) REFERENCES `usuario` (`IdUsuario`);

--
-- Filtros para la tabla `izquierda`
--
ALTER TABLE `izquierda`
  ADD CONSTRAINT `fk_Izquierda_Evaluacion_Oclusion` FOREIGN KEY (`Evaluacion_Oclusion_IdEvaOclu`) REFERENCES `evaluacion_oclusion` (`IdEvaOclu`);

--
-- Filtros para la tabla `plantratamiento`
--
ALTER TABLE `plantratamiento`
  ADD CONSTRAINT `PlanTratam_ExmPsiMental_FK` FOREIGN KEY (`ExamenPsiquicoMental_IdExmPsiMental`) REFERENCES `examenpsiquicomental` (`IdExmPsiMental`);

--
-- Filtros para la tabla `presupuesto`
--
ALTER TABLE `presupuesto`
  ADD CONSTRAINT `Presup_TratPres_FK` FOREIGN KEY (`TratamientoPresupuesto_IdTratPres`) REFERENCES `tratamientopresupuesto` (`IdTratPres`),
  ADD CONSTRAINT `fk_Presupuesto_TratamientoPresupuesto` FOREIGN KEY (`TratamientoPresupuesto_IdTratPres`) REFERENCES `tratamientopresupuesto` (`IdTratPres`);

--
-- Filtros para la tabla `registrodentaldenticionpermanente`
--
ALTER TABLE `registrodentaldenticionpermanente`
  ADD CONSTRAINT `RegDenDtcPrm_Paciente_FK` FOREIGN KEY (`Paciente_IdPaciente`) REFERENCES `paciente` (`IdPaciente`);

--
-- Filtros para la tabla `registrodentaldenticiontemporaria`
--
ALTER TABLE `registrodentaldenticiontemporaria`
  ADD CONSTRAINT `RegDenDtcTmp_Paciente_FK` FOREIGN KEY (`Paciente_IdPaciente`) REFERENCES `paciente` (`IdPaciente`);

--
-- Filtros para la tabla `signo_vital`
--
ALTER TABLE `signo_vital`
  ADD CONSTRAINT `Signos_Vitales_Anamnesis_FK` FOREIGN KEY (`Anamnesis_IdAnamesis`) REFERENCES `anamnesis1` (`IdAnamesis`);

--
-- Filtros para la tabla `tratamiento`
--
ALTER TABLE `tratamiento`
  ADD CONSTRAINT `Trat_TratPres_FK` FOREIGN KEY (`TratamientoPresupuesto_IdTratPres`) REFERENCES `tratamientopresupuesto` (`IdTratPres`),
  ADD CONSTRAINT `fk_Tratamiento_TratamientoPresupuesto` FOREIGN KEY (`TratamientoPresupuesto_IdTratPres`) REFERENCES `tratamientopresupuesto` (`IdTratPres`);

--
-- Filtros para la tabla `tratamientopresupuesto`
--
ALTER TABLE `tratamientopresupuesto`
  ADD CONSTRAINT `TratPres_Paciente_FK` FOREIGN KEY (`Paciente_IdPaciente`) REFERENCES `paciente` (`IdPaciente`),
  ADD CONSTRAINT `fk_TratamientoPresupuesto_Paciente` FOREIGN KEY (`Paciente_IdPaciente`) REFERENCES `paciente` (`IdPaciente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
