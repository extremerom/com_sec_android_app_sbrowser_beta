.class public final enum Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConsentStatusCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;

.field public static final enum NOT_RECEIVED:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;

.field public static final enum RECEIVED_FAIL:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;

.field public static final enum RECEIVED_SUCCESS_LIST_MANDATORY:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;

.field public static final enum RECEIVED_SUCCESS_LIST_NON_MANDATORY_OR_EMPTY:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;


# instance fields
.field private mValue:I


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;->NOT_RECEIVED:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;

    sget-object v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;->RECEIVED_FAIL:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;

    sget-object v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;->RECEIVED_SUCCESS_LIST_MANDATORY:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;

    sget-object v3, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;->RECEIVED_SUCCESS_LIST_NON_MANDATORY_OR_EMPTY:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;

    const/4 v1, -0x1

    const-string v2, "NOT_RECEIVED"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;->NOT_RECEIVED:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;

    const-string v1, "RECEIVED_FAIL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;->RECEIVED_FAIL:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;

    const-string v1, "RECEIVED_SUCCESS_LIST_MANDATORY"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;->RECEIVED_SUCCESS_LIST_MANDATORY:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;

    const-string v1, "RECEIVED_SUCCESS_LIST_NON_MANDATORY_OR_EMPTY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;->RECEIVED_SUCCESS_LIST_NON_MANDATORY_OR_EMPTY:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;->$values()[Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;->$VALUES:[Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;->$VALUES:[Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;->mValue:I

    return p0
.end method
