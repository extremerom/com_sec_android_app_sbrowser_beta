.class public Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper$ResultHandlerWrapper;,
        Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper$TerraceResultHandler;
    }
.end annotation


# instance fields
.field private mIsReadyToPayServiceHelper:Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper$TerraceResultHandler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;

    new-instance v1, Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper$ResultHandlerWrapper;

    invoke-direct {v1, p3}, Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper$ResultHandlerWrapper;-><init>(Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper$TerraceResultHandler;)V

    invoke-direct {v0, p1, p2, v1}, Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;-><init>(Landroid/content/Context;Landroid/content/Intent;Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper$ResultHandler;)V

    iput-object v0, p0, Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper;->mIsReadyToPayServiceHelper:Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;

    return-void
.end method


# virtual methods
.method public query()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper;->mIsReadyToPayServiceHelper:Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;

    invoke-virtual {p0}, Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;->query()V

    return-void
.end method
