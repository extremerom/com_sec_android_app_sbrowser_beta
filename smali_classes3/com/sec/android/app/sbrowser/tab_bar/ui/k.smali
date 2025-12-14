.class public final synthetic Lcom/sec/android/app/sbrowser/tab_bar/ui/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

.field public final synthetic b:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/k;->a:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/k;->b:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    return-void
.end method


# virtual methods
.method public final onCallback(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/k;->a:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/k;->b:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->a(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;Landroid/graphics/Bitmap;)V

    return-void
.end method
