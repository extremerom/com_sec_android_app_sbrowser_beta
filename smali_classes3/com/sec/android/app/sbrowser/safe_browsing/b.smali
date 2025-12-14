.class public final synthetic Lcom/sec/android/app/sbrowser/safe_browsing/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$OnInitializedListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/b;->a:Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;

    return-void
.end method


# virtual methods
.method public final onInitialized()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/b;->a:Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;->b(Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;)V

    return-void
.end method
