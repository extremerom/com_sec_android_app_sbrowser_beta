.class public final enum Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;

.field public static final enum NEGATIVE:Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;

.field public static final enum NEUTRAL:Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;

.field public static final enum POSITIVE:Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;->POSITIVE:Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;

    sget-object v1, Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;->NEGATIVE:Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;

    sget-object v2, Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;->NEUTRAL:Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;

    filled-new-array {v0, v1, v2}, [Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;

    const-string v1, "POSITIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;->POSITIVE:Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;

    new-instance v0, Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;

    const-string v1, "NEGATIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;->NEGATIVE:Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;

    new-instance v0, Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;

    const-string v1, "NEUTRAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;->NEUTRAL:Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;

    invoke-static {}, Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;->$values()[Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;->$VALUES:[Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;->$VALUES:[Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;

    return-object v0
.end method
