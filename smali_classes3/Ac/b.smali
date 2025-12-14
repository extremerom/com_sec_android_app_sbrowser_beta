.class public final enum LAc/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[LAc/b;

.field public static final enum ERROR_CLASS:LAc/b;

.field public static final enum ERROR_FUNCTION:LAc/b;

.field public static final enum ERROR_MODULE:LAc/b;

.field public static final enum ERROR_PROPERTY:LAc/b;

.field public static final enum ERROR_SCOPE:LAc/b;

.field public static final enum ERROR_TYPE:LAc/b;

.field public static final enum PARENT_OF_ERROR_SCOPE:LAc/b;


# instance fields
.field private final debugText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, LAc/b;

    const-string v1, "<Error class: %s>"

    const-string v2, "ERROR_CLASS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, LAc/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LAc/b;->ERROR_CLASS:LAc/b;

    new-instance v1, LAc/b;

    const-string v2, "<Error function>"

    const-string v3, "ERROR_FUNCTION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, LAc/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, LAc/b;->ERROR_FUNCTION:LAc/b;

    new-instance v2, LAc/b;

    const-string v3, "<Error scope>"

    const-string v4, "ERROR_SCOPE"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, LAc/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, LAc/b;->ERROR_SCOPE:LAc/b;

    new-instance v3, LAc/b;

    const-string v4, "<Error module>"

    const-string v5, "ERROR_MODULE"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, LAc/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, LAc/b;->ERROR_MODULE:LAc/b;

    new-instance v4, LAc/b;

    const-string v5, "<Error property>"

    const-string v6, "ERROR_PROPERTY"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, LAc/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, LAc/b;->ERROR_PROPERTY:LAc/b;

    new-instance v5, LAc/b;

    const-string v6, "[Error type: %s]"

    const-string v7, "ERROR_TYPE"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, LAc/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, LAc/b;->ERROR_TYPE:LAc/b;

    new-instance v6, LAc/b;

    const-string v7, "<Fake parent for error lexical scope>"

    const-string v8, "PARENT_OF_ERROR_SCOPE"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, LAc/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, LAc/b;->PARENT_OF_ERROR_SCOPE:LAc/b;

    filled-new-array/range {v0 .. v6}, [LAc/b;

    move-result-object v0

    sput-object v0, LAc/b;->$VALUES:[LAc/b;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, LAc/b;->$ENTRIES:Llb/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, LAc/b;->debugText:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LAc/b;
    .locals 1

    const-class v0, LAc/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LAc/b;

    return-object p0
.end method

.method public static values()[LAc/b;
    .locals 1

    sget-object v0, LAc/b;->$VALUES:[LAc/b;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LAc/b;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LAc/b;->debugText:Ljava/lang/String;

    return-object p0
.end method
