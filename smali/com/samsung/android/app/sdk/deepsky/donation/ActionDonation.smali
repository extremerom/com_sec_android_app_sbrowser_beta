.class public final Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\rB\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0006R\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR \u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation;",
        "",
        "Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation$Builder;",
        "builder",
        "<init>",
        "(Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation$Builder;)V",
        "Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation$Builder;",
        "",
        "actionName",
        "Ljava/lang/String;",
        "",
        "paramDetailMap",
        "Ljava/util/Map;",
        "Builder",
        "deepsky-sdk-smartsuggestion-0.0.2_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final actionName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final builder:Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final paramDetailMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation;->builder:Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation$Builder;

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation$Builder;->getActionName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation;->actionName:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation;->paramDetailMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation$Builder;->getParamDetailMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation$Builder;Ltb/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation;-><init>(Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation$Builder;)V

    return-void
.end method
