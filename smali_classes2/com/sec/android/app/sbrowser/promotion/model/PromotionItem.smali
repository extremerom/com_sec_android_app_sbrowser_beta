.class public Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$Builder;,
        Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$State;
    }
.end annotation


# instance fields
.field private final mAction:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mPrefHelper:Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$Builder;->b(Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem;->mName:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$Builder;->a(Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem;->mAction:Ljava/lang/String;

    new-instance p1, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem;->mPrefHelper:Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$Builder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem;-><init>(Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$Builder;)V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem;->mAction:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$State;
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$State;->values()[Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$State;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem;->mPrefHelper:Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;

    sget-object v1, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$State;->VALID:Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "status"

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;->getInt(Ljava/lang/String;I)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public setStatus(Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$State;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem;->mPrefHelper:Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "status"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionPreferenceHelper;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PromotionItem{mName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mAction=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem;->mAction:Ljava/lang/String;

    const-string v1, "\'}"

    invoke-static {v0, p0, v1}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
