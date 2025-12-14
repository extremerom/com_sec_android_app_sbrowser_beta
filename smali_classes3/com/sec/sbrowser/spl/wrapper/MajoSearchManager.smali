.class public Lcom/sec/sbrowser/spl/wrapper/MajoSearchManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SUGGEST_COLUMN_GROUP:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final SUGGEST_COLUMN_ICON_1_BLOB:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final SUGGEST_COLUMN_MIME_TYPE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final SUGGEST_COLUMN_TARGET_TYPE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final SUGGEST_COLUMN_URI:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final SUGGEST_PARAMETER_ETIME:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final SUGGEST_PARAMETER_STIME:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    const-class v1, Landroid/app/SearchManager;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v2, "SEM_SUGGEST_COLUMN_ICON_1_BLOB"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSearchManager;->SUGGEST_COLUMN_ICON_1_BLOB:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v2, "SEM_SUGGEST_COLUMN_URI"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSearchManager;->SUGGEST_COLUMN_URI:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v2, "SEM_SUGGEST_COLUMN_MIME_TYPE"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSearchManager;->SUGGEST_COLUMN_MIME_TYPE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v2, "SEM_SUGGEST_COLUMN_GROUP"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSearchManager;->SUGGEST_COLUMN_GROUP:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v2, "SEM_SUGGEST_COLUMN_TARGET_TYPE"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSearchManager;->SUGGEST_COLUMN_TARGET_TYPE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v2, "SEM_SUGGEST_PARAMETER_START_TIME"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSearchManager;->SUGGEST_PARAMETER_STIME:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v2, "SEM_SUGGEST_PARAMETER_END_TIME"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSearchManager;->SUGGEST_PARAMETER_ETIME:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v2, "SUGGEST_COLUMN_ICON_1_BLOB"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSearchManager;->SUGGEST_COLUMN_ICON_1_BLOB:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v2, "SUGGEST_COLUMN_URI"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSearchManager;->SUGGEST_COLUMN_URI:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v2, "SUGGEST_COLUMN_MIME_TYPE"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSearchManager;->SUGGEST_COLUMN_MIME_TYPE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v2, "SUGGEST_COLUMN_GROUP"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSearchManager;->SUGGEST_COLUMN_GROUP:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v2, "SUGGEST_COLUMN_TARGET_TYPE"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSearchManager;->SUGGEST_COLUMN_TARGET_TYPE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v2, "SUGGEST_PARAMETER_STIME"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSearchManager;->SUGGEST_PARAMETER_STIME:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v2, "SUGGEST_PARAMETER_ETIME"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSearchManager;->SUGGEST_PARAMETER_ETIME:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    :goto_0
    return-void
.end method
