.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/ui/page/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;

.field public final synthetic b:Landroidx/recyclerview/widget/h1;

.field public final synthetic c:Landroidx/recyclerview/widget/h1;

.field public final synthetic d:Landroidx/recyclerview/widget/C0;

.field public final synthetic e:Landroidx/recyclerview/widget/C0;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/C0;Landroidx/recyclerview/widget/C0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/x;->a:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/x;->b:Landroidx/recyclerview/widget/h1;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/x;->c:Landroidx/recyclerview/widget/h1;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/x;->d:Landroidx/recyclerview/widget/C0;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/x;->e:Landroidx/recyclerview/widget/C0;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/x;->b:Landroidx/recyclerview/widget/h1;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/x;->c:Landroidx/recyclerview/widget/h1;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/x;->a:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/x;->d:Landroidx/recyclerview/widget/C0;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/x;->e:Landroidx/recyclerview/widget/C0;

    invoke-static {v2, v0, v1, v3, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;->d(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/C0;Landroidx/recyclerview/widget/C0;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
