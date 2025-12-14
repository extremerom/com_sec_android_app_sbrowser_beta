.class public final synthetic Lcom/sec/android/app/sbrowser/tab_bar/ui/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$2;

.field public final synthetic b:F

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$2;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/p;->a:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$2;

    iput p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/p;->b:F

    iput p3, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/p;->c:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/p;->c:F

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/p;->a:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$2;

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/p;->b:F

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$2;->a(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$2;FF)V

    return-void
.end method
