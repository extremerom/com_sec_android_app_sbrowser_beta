.class public final enum Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LabelForFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

.field public static final enum CARD_NUMBER_TYPE:Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

.field public static final enum EMAIL_TYPE:Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

.field public static final enum EXPIRY_DATE_TYPE:Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

.field public static final enum NORMAL_TYPE:Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

.field public static final enum PASSWORD_TYPE:Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

.field public static final enum USERNAME_TYPE:Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;
    .locals 6

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;->NORMAL_TYPE:Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;->EMAIL_TYPE:Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;->CARD_NUMBER_TYPE:Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    sget-object v3, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;->EXPIRY_DATE_TYPE:Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    sget-object v4, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;->USERNAME_TYPE:Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    sget-object v5, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;->PASSWORD_TYPE:Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    filled-new-array/range {v0 .. v5}, [Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    const-string v1, "NORMAL_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;->NORMAL_TYPE:Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    const-string v1, "EMAIL_TYPE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;->EMAIL_TYPE:Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    const-string v1, "CARD_NUMBER_TYPE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;->CARD_NUMBER_TYPE:Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    const-string v1, "EXPIRY_DATE_TYPE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;->EXPIRY_DATE_TYPE:Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    const-string v1, "USERNAME_TYPE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;->USERNAME_TYPE:Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    const-string v1, "PASSWORD_TYPE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;->PASSWORD_TYPE:Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;->$values()[Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;->$VALUES:[Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;->$VALUES:[Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    return-object v0
.end method
