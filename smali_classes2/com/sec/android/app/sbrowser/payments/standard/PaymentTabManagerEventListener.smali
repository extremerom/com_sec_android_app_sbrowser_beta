.class public Lcom/sec/android/app/sbrowser/payments/standard/PaymentTabManagerEventListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/payments/standard/PaymentTabManagerEventListener$TabManagerCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/sec/android/app/sbrowser/payments/standard/PaymentTabManagerEventListener$TabManagerCallback;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/PaymentTabManagerEventListener$TabManagerCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentTabManagerEventListener;->mCallback:Lcom/sec/android/app/sbrowser/payments/standard/PaymentTabManagerEventListener$TabManagerCallback;

    return-void
.end method


# virtual methods
.method public onCurrentTabChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentTabManagerEventListener;->mCallback:Lcom/sec/android/app/sbrowser/payments/standard/PaymentTabManagerEventListener$TabManagerCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentTabManagerEventListener$TabManagerCallback;->onTabChanged()V

    :cond_0
    return-void
.end method
