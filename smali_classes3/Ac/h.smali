.class public final enum LAc/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[LAc/h;

.field public static final enum CAPTURED_TYPE_SCOPE:LAc/h;

.field public static final enum ERASED_RECEIVER_TYPE_SCOPE:LAc/h;

.field public static final enum ERROR_TYPE_SCOPE:LAc/h;

.field public static final enum INTEGER_LITERAL_TYPE_SCOPE:LAc/h;

.field public static final enum NON_CLASSIFIER_SUPER_TYPE_SCOPE:LAc/h;

.field public static final enum SCOPE_FOR_ABBREVIATION_TYPE:LAc/h;

.field public static final enum SCOPE_FOR_ERROR_CLASS:LAc/h;

.field public static final enum SCOPE_FOR_ERROR_RESOLUTION_CANDIDATE:LAc/h;

.field public static final enum STUB_TYPE_SCOPE:LAc/h;

.field public static final enum UNSUPPORTED_TYPE_SCOPE:LAc/h;


# instance fields
.field private final debugMessage:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, LAc/h;

    const-string v1, "No member resolution should be done on captured type, it used only during constraint system resolution"

    const-string v2, "CAPTURED_TYPE_SCOPE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, LAc/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LAc/h;->CAPTURED_TYPE_SCOPE:LAc/h;

    new-instance v1, LAc/h;

    const-string v2, "Scope for integer literal type (%s)"

    const-string v3, "INTEGER_LITERAL_TYPE_SCOPE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, LAc/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, LAc/h;->INTEGER_LITERAL_TYPE_SCOPE:LAc/h;

    new-instance v2, LAc/h;

    const-string v3, "Error scope for erased receiver type"

    const-string v4, "ERASED_RECEIVER_TYPE_SCOPE"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, LAc/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, LAc/h;->ERASED_RECEIVER_TYPE_SCOPE:LAc/h;

    new-instance v3, LAc/h;

    const-string v4, "Scope for abbreviation %s"

    const-string v5, "SCOPE_FOR_ABBREVIATION_TYPE"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, LAc/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, LAc/h;->SCOPE_FOR_ABBREVIATION_TYPE:LAc/h;

    new-instance v4, LAc/h;

    const-string v5, "Scope for stub type %s"

    const-string v6, "STUB_TYPE_SCOPE"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, LAc/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, LAc/h;->STUB_TYPE_SCOPE:LAc/h;

    new-instance v5, LAc/h;

    const-string v6, "A scope for common supertype which is not a normal classifier"

    const-string v7, "NON_CLASSIFIER_SUPER_TYPE_SCOPE"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, LAc/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, LAc/h;->NON_CLASSIFIER_SUPER_TYPE_SCOPE:LAc/h;

    new-instance v6, LAc/h;

    const-string v7, "Scope for error type %s"

    const-string v8, "ERROR_TYPE_SCOPE"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, LAc/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, LAc/h;->ERROR_TYPE_SCOPE:LAc/h;

    new-instance v7, LAc/h;

    const-string v8, "Scope for unsupported type %s"

    const-string v9, "UNSUPPORTED_TYPE_SCOPE"

    const/4 v10, 0x7

    invoke-direct {v7, v9, v10, v8}, LAc/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, LAc/h;->UNSUPPORTED_TYPE_SCOPE:LAc/h;

    new-instance v8, LAc/h;

    const-string v9, "Error scope for class %s with arguments: %s"

    const-string v10, "SCOPE_FOR_ERROR_CLASS"

    const/16 v11, 0x8

    invoke-direct {v8, v10, v11, v9}, LAc/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, LAc/h;->SCOPE_FOR_ERROR_CLASS:LAc/h;

    new-instance v9, LAc/h;

    const-string v10, "Error resolution candidate for call %s"

    const-string v11, "SCOPE_FOR_ERROR_RESOLUTION_CANDIDATE"

    const/16 v12, 0x9

    invoke-direct {v9, v11, v12, v10}, LAc/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, LAc/h;->SCOPE_FOR_ERROR_RESOLUTION_CANDIDATE:LAc/h;

    filled-new-array/range {v0 .. v9}, [LAc/h;

    move-result-object v0

    sput-object v0, LAc/h;->$VALUES:[LAc/h;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, LAc/h;->$ENTRIES:Llb/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, LAc/h;->debugMessage:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LAc/h;
    .locals 1

    const-class v0, LAc/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LAc/h;

    return-object p0
.end method

.method public static values()[LAc/h;
    .locals 1

    sget-object v0, LAc/h;->$VALUES:[LAc/h;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LAc/h;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LAc/h;->debugMessage:Ljava/lang/String;

    return-object p0
.end method
