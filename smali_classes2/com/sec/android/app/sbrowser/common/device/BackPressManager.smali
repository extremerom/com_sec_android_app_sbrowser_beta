.class public Lcom/sec/android/app/sbrowser/common/device/BackPressManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mOnSystemNavigationCallback:Landroid/window/OnBackInvokedCallback;


# direct methods
.method public constructor <init>(Landroid/window/OnBackInvokedCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/device/BackPressManager;->mOnSystemNavigationCallback:Landroid/window/OnBackInvokedCallback;

    return-void
.end method


# virtual methods
.method public getOnSystemNavigationCallback()Landroid/window/OnBackInvokedCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/BackPressManager;->mOnSystemNavigationCallback:Landroid/window/OnBackInvokedCallback;

    return-object p0
.end method
