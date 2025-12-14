.class Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/public_things/PublicPages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parameter"
.end annotation


# instance fields
.field private final mAgreement:Z

.field private final mChanges:Z

.field private final mOptional:Z

.field private final mType:Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;-><init>(Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;ZZZ)V

    return-void
.end method

.method private constructor <init>(Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;ZZZ)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;->mType:Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;->mAgreement:Z

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;->mOptional:Z

    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;->mChanges:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;)Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;->getType()Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;->isAgreement()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;->isChanges()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;->isOptional()Z

    move-result p0

    return p0
.end method

.method private getType()Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;->mType:Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;

    return-object p0
.end method

.method private isAgreement()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;->mAgreement:Z

    return p0
.end method

.method private isChanges()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;->mChanges:Z

    return p0
.end method

.method private isOptional()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;->mOptional:Z

    return p0
.end method
