.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/ui/page/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/e;->a:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;

    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/e;->b:I

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/e;->a:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/e;->b:I

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->b(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;ILandroid/view/View;Z)V

    return-void
.end method
