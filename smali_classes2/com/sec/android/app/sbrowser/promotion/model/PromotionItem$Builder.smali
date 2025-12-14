.class public Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$Builder;->mAction:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$Builder;->mName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem;-><init>(Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$Builder;I)V

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$Builder;->mAction:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem$Builder;->mName:Ljava/lang/String;

    return-object p0
.end method
