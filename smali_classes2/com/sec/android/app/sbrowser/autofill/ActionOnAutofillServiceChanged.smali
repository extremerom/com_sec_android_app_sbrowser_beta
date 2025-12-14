.class public final enum Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;

.field public static final enum REFRESH_ALL_TABS:Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;

.field public static final enum UPDATE_IMPORTANT_FOR_AUTOFILL:Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;->REFRESH_ALL_TABS:Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;

    sget-object v1, Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;->UPDATE_IMPORTANT_FOR_AUTOFILL:Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;

    filled-new-array {v0, v1}, [Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;

    const-string v1, "REFRESH_ALL_TABS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;->REFRESH_ALL_TABS:Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;

    const-string v1, "UPDATE_IMPORTANT_FOR_AUTOFILL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;->UPDATE_IMPORTANT_FOR_AUTOFILL:Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;->$values()[Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;->$VALUES:[Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;->$VALUES:[Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;

    return-object v0
.end method
