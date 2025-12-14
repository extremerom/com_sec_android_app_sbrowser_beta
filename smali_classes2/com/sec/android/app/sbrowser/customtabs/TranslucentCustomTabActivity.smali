.class public Lcom/sec/android/app/sbrowser/customtabs/TranslucentCustomTabActivity;
.super Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/utils/SnackbarDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getViewForSnackbar()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getCoordinatorView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
