.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/ui/page/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;ZLcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/b;->a:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/b;->b:Z

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/b;->c:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/b;->c:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/b;->a:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/b;->b:Z

    invoke-static {v1, p0, v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->d(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;ZLcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;Landroid/view/View;)V

    return-void
.end method
