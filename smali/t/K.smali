.class public final Lt/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/c;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/K;->a:Landroidx/appcompat/widget/c;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 0

    iget-object p0, p0, Lt/K;->a:Landroidx/appcompat/widget/c;

    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->h()V

    invoke-static {p0}, Landroidx/appcompat/widget/c;->g(Landroidx/appcompat/widget/c;)V

    return-void
.end method
