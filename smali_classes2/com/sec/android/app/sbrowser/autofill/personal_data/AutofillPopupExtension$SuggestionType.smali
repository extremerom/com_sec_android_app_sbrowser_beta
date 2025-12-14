.class final enum Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SuggestionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;

.field public static final enum NO_REGISTRATION:Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;

.field public static final enum SAMSUNG_PASS_INACTIVATED:Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;

.field public static final enum UNKNOWN:Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;->UNKNOWN:Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;

    sget-object v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;->NO_REGISTRATION:Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;

    sget-object v2, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;->SAMSUNG_PASS_INACTIVATED:Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;

    filled-new-array {v0, v1, v2}, [Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;->UNKNOWN:Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;

    const-string v1, "NO_REGISTRATION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;->NO_REGISTRATION:Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;

    const-string v1, "SAMSUNG_PASS_INACTIVATED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;->SAMSUNG_PASS_INACTIVATED:Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;->$values()[Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;->$VALUES:[Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;->$VALUES:[Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;

    return-object v0
.end method


# virtual methods
.method public equals(Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;)Z
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->payload:Lcom/sec/terrace/services/autofill/mojom/TerracePayload;

    invoke-virtual {p1}, Lcom/sec/terrace/services/autofill/mojom/TerracePayload;->getGuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method
