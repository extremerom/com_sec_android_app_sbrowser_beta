.class public final enum Lcom/google/common/base/w;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/base/w;

.field public static final enum FILE_SEPARATOR:Lcom/google/common/base/w;

.field public static final enum JAVA_CLASS_PATH:Lcom/google/common/base/w;

.field public static final enum JAVA_CLASS_VERSION:Lcom/google/common/base/w;

.field public static final enum JAVA_COMPILER:Lcom/google/common/base/w;

.field public static final enum JAVA_EXT_DIRS:Lcom/google/common/base/w;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum JAVA_HOME:Lcom/google/common/base/w;

.field public static final enum JAVA_IO_TMPDIR:Lcom/google/common/base/w;

.field public static final enum JAVA_LIBRARY_PATH:Lcom/google/common/base/w;

.field public static final enum JAVA_SPECIFICATION_NAME:Lcom/google/common/base/w;

.field public static final enum JAVA_SPECIFICATION_VENDOR:Lcom/google/common/base/w;

.field public static final enum JAVA_SPECIFICATION_VERSION:Lcom/google/common/base/w;

.field public static final enum JAVA_VENDOR:Lcom/google/common/base/w;

.field public static final enum JAVA_VENDOR_URL:Lcom/google/common/base/w;

.field public static final enum JAVA_VERSION:Lcom/google/common/base/w;

.field public static final enum JAVA_VM_NAME:Lcom/google/common/base/w;

.field public static final enum JAVA_VM_SPECIFICATION_NAME:Lcom/google/common/base/w;

.field public static final enum JAVA_VM_SPECIFICATION_VENDOR:Lcom/google/common/base/w;

.field public static final enum JAVA_VM_SPECIFICATION_VERSION:Lcom/google/common/base/w;

.field public static final enum JAVA_VM_VENDOR:Lcom/google/common/base/w;

.field public static final enum JAVA_VM_VERSION:Lcom/google/common/base/w;

.field public static final enum LINE_SEPARATOR:Lcom/google/common/base/w;

.field public static final enum OS_ARCH:Lcom/google/common/base/w;

.field public static final enum OS_NAME:Lcom/google/common/base/w;

.field public static final enum OS_VERSION:Lcom/google/common/base/w;

.field public static final enum PATH_SEPARATOR:Lcom/google/common/base/w;

.field public static final enum USER_DIR:Lcom/google/common/base/w;

.field public static final enum USER_HOME:Lcom/google/common/base/w;

.field public static final enum USER_NAME:Lcom/google/common/base/w;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 31

    new-instance v0, Lcom/google/common/base/w;

    const-string v1, "java.version"

    const-string v2, "JAVA_VERSION"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/common/base/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/w;->JAVA_VERSION:Lcom/google/common/base/w;

    new-instance v1, Lcom/google/common/base/w;

    const-string v2, "java.vendor"

    const-string v3, "JAVA_VENDOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/google/common/base/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/common/base/w;->JAVA_VENDOR:Lcom/google/common/base/w;

    new-instance v2, Lcom/google/common/base/w;

    const-string v3, "java.vendor.url"

    const-string v4, "JAVA_VENDOR_URL"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/google/common/base/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/common/base/w;->JAVA_VENDOR_URL:Lcom/google/common/base/w;

    new-instance v3, Lcom/google/common/base/w;

    const-string v4, "java.home"

    const-string v5, "JAVA_HOME"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/google/common/base/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/common/base/w;->JAVA_HOME:Lcom/google/common/base/w;

    new-instance v4, Lcom/google/common/base/w;

    const-string v5, "java.vm.specification.version"

    const-string v6, "JAVA_VM_SPECIFICATION_VERSION"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lcom/google/common/base/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/common/base/w;->JAVA_VM_SPECIFICATION_VERSION:Lcom/google/common/base/w;

    new-instance v5, Lcom/google/common/base/w;

    const-string v6, "java.vm.specification.vendor"

    const-string v7, "JAVA_VM_SPECIFICATION_VENDOR"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lcom/google/common/base/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/common/base/w;->JAVA_VM_SPECIFICATION_VENDOR:Lcom/google/common/base/w;

    new-instance v6, Lcom/google/common/base/w;

    const-string v7, "java.vm.specification.name"

    const-string v8, "JAVA_VM_SPECIFICATION_NAME"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lcom/google/common/base/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/google/common/base/w;->JAVA_VM_SPECIFICATION_NAME:Lcom/google/common/base/w;

    new-instance v7, Lcom/google/common/base/w;

    const-string v8, "java.vm.version"

    const-string v9, "JAVA_VM_VERSION"

    const/4 v10, 0x7

    invoke-direct {v7, v9, v10, v8}, Lcom/google/common/base/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/google/common/base/w;->JAVA_VM_VERSION:Lcom/google/common/base/w;

    new-instance v8, Lcom/google/common/base/w;

    const-string v9, "java.vm.vendor"

    const-string v10, "JAVA_VM_VENDOR"

    const/16 v11, 0x8

    invoke-direct {v8, v10, v11, v9}, Lcom/google/common/base/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/google/common/base/w;->JAVA_VM_VENDOR:Lcom/google/common/base/w;

    new-instance v9, Lcom/google/common/base/w;

    const-string v10, "java.vm.name"

    const-string v11, "JAVA_VM_NAME"

    const/16 v12, 0x9

    invoke-direct {v9, v11, v12, v10}, Lcom/google/common/base/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/google/common/base/w;->JAVA_VM_NAME:Lcom/google/common/base/w;

    new-instance v10, Lcom/google/common/base/w;

    const-string v11, "java.specification.version"

    const-string v12, "JAVA_SPECIFICATION_VERSION"

    const/16 v13, 0xa

    invoke-direct {v10, v12, v13, v11}, Lcom/google/common/base/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/google/common/base/w;->JAVA_SPECIFICATION_VERSION:Lcom/google/common/base/w;

    new-instance v11, Lcom/google/common/base/w;

    const-string v12, "java.specification.vendor"

    const-string v13, "JAVA_SPECIFICATION_VENDOR"

    const/16 v14, 0xb

    invoke-direct {v11, v13, v14, v12}, Lcom/google/common/base/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/google/common/base/w;->JAVA_SPECIFICATION_VENDOR:Lcom/google/common/base/w;

    new-instance v12, Lcom/google/common/base/w;

    const-string v13, "java.specification.name"

    const-string v14, "JAVA_SPECIFICATION_NAME"

    const/16 v15, 0xc

    invoke-direct {v12, v14, v15, v13}, Lcom/google/common/base/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/google/common/base/w;->JAVA_SPECIFICATION_NAME:Lcom/google/common/base/w;

    new-instance v13, Lcom/google/common/base/w;

    const-string v14, "java.class.version"

    const-string v15, "JAVA_CLASS_VERSION"

    move-object/from16 v16, v12

    const/16 v12, 0xd

    invoke-direct {v13, v15, v12, v14}, Lcom/google/common/base/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/google/common/base/w;->JAVA_CLASS_VERSION:Lcom/google/common/base/w;

    new-instance v14, Lcom/google/common/base/w;

    const-string v12, "java.class.path"

    const-string v15, "JAVA_CLASS_PATH"

    move-object/from16 v17, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13, v12}, Lcom/google/common/base/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/google/common/base/w;->JAVA_CLASS_PATH:Lcom/google/common/base/w;

    new-instance v15, Lcom/google/common/base/w;

    const-string v12, "java.library.path"

    const-string v13, "JAVA_LIBRARY_PATH"

    move-object/from16 v18, v14

    const/16 v14, 0xf

    invoke-direct {v15, v13, v14, v12}, Lcom/google/common/base/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/google/common/base/w;->JAVA_LIBRARY_PATH:Lcom/google/common/base/w;

    new-instance v14, Lcom/google/common/base/w;

    const-string v12, "java.io.tmpdir"

    const-string v13, "JAVA_IO_TMPDIR"

    move-object/from16 v19, v15

    const/16 v15, 0x10

    invoke-direct {v14, v13, v15, v12}, Lcom/google/common/base/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/google/common/base/w;->JAVA_IO_TMPDIR:Lcom/google/common/base/w;

    new-instance v15, Lcom/google/common/base/w;

    const-string v12, "java.compiler"

    const-string v13, "JAVA_COMPILER"

    move-object/from16 v20, v14

    const/16 v14, 0x11

    invoke-direct {v15, v13, v14, v12}, Lcom/google/common/base/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/google/common/base/w;->JAVA_COMPILER:Lcom/google/common/base/w;

    new-instance v14, Lcom/google/common/base/w;

    const-string v12, "java.ext.dirs"

    const-string v13, "JAVA_EXT_DIRS"

    move-object/from16 v21, v15

    const/16 v15, 0x12

    invoke-direct {v14, v13, v15, v12}, Lcom/google/common/base/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/google/common/base/w;->JAVA_EXT_DIRS:Lcom/google/common/base/w;

    new-instance v15, Lcom/google/common/base/w;

    const-string v12, "os.name"

    const-string v13, "OS_NAME"

    move-object/from16 v22, v14

    const/16 v14, 0x13

    invoke-direct {v15, v13, v14, v12}, Lcom/google/common/base/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/google/common/base/w;->OS_NAME:Lcom/google/common/base/w;

    new-instance v14, Lcom/google/common/base/w;

    const-string v12, "os.arch"

    const-string v13, "OS_ARCH"

    move-object/from16 v23, v15

    const/16 v15, 0x14

    invoke-direct {v14, v13, v15, v12}, Lcom/google/common/base/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/google/common/base/w;->OS_ARCH:Lcom/google/common/base/w;

    new-instance v15, Lcom/google/common/base/w;

    const-string v12, "os.version"

    const-string v13, "OS_VERSION"

    move-object/from16 v24, v14

    const/16 v14, 0x15

    invoke-direct {v15, v13, v14, v12}, Lcom/google/common/base/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/google/common/base/w;->OS_VERSION:Lcom/google/common/base/w;

    new-instance v14, Lcom/google/common/base/w;

    const-string v12, "file.separator"

    const-string v13, "FILE_SEPARATOR"

    move-object/from16 v25, v15

    const/16 v15, 0x16

    invoke-direct {v14, v13, v15, v12}, Lcom/google/common/base/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/google/common/base/w;->FILE_SEPARATOR:Lcom/google/common/base/w;

    new-instance v15, Lcom/google/common/base/w;

    const-string v12, "path.separator"

    const-string v13, "PATH_SEPARATOR"

    move-object/from16 v26, v14

    const/16 v14, 0x17

    invoke-direct {v15, v13, v14, v12}, Lcom/google/common/base/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/google/common/base/w;->PATH_SEPARATOR:Lcom/google/common/base/w;

    new-instance v14, Lcom/google/common/base/w;

    const-string v12, "line.separator"

    const-string v13, "LINE_SEPARATOR"

    move-object/from16 v27, v15

    const/16 v15, 0x18

    invoke-direct {v14, v13, v15, v12}, Lcom/google/common/base/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/google/common/base/w;->LINE_SEPARATOR:Lcom/google/common/base/w;

    new-instance v15, Lcom/google/common/base/w;

    const-string v12, "user.name"

    const-string v13, "USER_NAME"

    move-object/from16 v28, v14

    const/16 v14, 0x19

    invoke-direct {v15, v13, v14, v12}, Lcom/google/common/base/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/google/common/base/w;->USER_NAME:Lcom/google/common/base/w;

    new-instance v14, Lcom/google/common/base/w;

    const-string v12, "user.home"

    const-string v13, "USER_HOME"

    move-object/from16 v29, v15

    const/16 v15, 0x1a

    invoke-direct {v14, v13, v15, v12}, Lcom/google/common/base/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/google/common/base/w;->USER_HOME:Lcom/google/common/base/w;

    new-instance v15, Lcom/google/common/base/w;

    const-string v12, "user.dir"

    const-string v13, "USER_DIR"

    move-object/from16 v30, v14

    const/16 v14, 0x1b

    invoke-direct {v15, v13, v14, v12}, Lcom/google/common/base/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/google/common/base/w;->USER_DIR:Lcom/google/common/base/w;

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-object/from16 v16, v20

    move-object/from16 v20, v22

    move-object/from16 v22, v24

    move-object/from16 v24, v26

    move-object/from16 v26, v28

    move-object/from16 v28, v30

    move-object/from16 v14, v18

    move-object/from16 v17, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v25

    move-object/from16 v25, v27

    move-object/from16 v27, v29

    move-object/from16 v29, v15

    move-object/from16 v15, v19

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    move-object/from16 v20, v22

    move-object/from16 v21, v23

    move-object/from16 v22, v24

    move-object/from16 v23, v25

    move-object/from16 v24, v26

    move-object/from16 v25, v27

    move-object/from16 v26, v28

    move-object/from16 v27, v29

    filled-new-array/range {v0 .. v27}, [Lcom/google/common/base/w;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/w;->$VALUES:[Lcom/google/common/base/w;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/common/base/w;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/w;
    .locals 1

    const-class v0, Lcom/google/common/base/w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/base/w;

    return-object p0
.end method

.method public static values()[Lcom/google/common/base/w;
    .locals 1

    sget-object v0, Lcom/google/common/base/w;->$VALUES:[Lcom/google/common/base/w;

    invoke-virtual {v0}, [Lcom/google/common/base/w;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/base/w;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/common/base/w;->key:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/common/base/w;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/common/base/w;->key:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
