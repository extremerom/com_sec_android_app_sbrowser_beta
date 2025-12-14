.class public final Landroidx/fragment/app/p0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Landroidx/fragment/app/Fragment;

.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Landroidx/lifecycle/C;

.field public i:Landroidx/lifecycle/C;


# direct methods
.method public constructor <init>(ILandroidx/fragment/app/Fragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/fragment/app/p0;->a:I

    iput-object p2, p0, Landroidx/fragment/app/p0;->b:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/p0;->c:Z

    sget-object p1, Landroidx/lifecycle/C;->RESUMED:Landroidx/lifecycle/C;

    iput-object p1, p0, Landroidx/fragment/app/p0;->h:Landroidx/lifecycle/C;

    iput-object p1, p0, Landroidx/fragment/app/p0;->i:Landroidx/lifecycle/C;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroidx/fragment/app/p0;->a:I

    iput-object p1, p0, Landroidx/fragment/app/p0;->b:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/fragment/app/p0;->c:Z

    sget-object p1, Landroidx/lifecycle/C;->RESUMED:Landroidx/lifecycle/C;

    iput-object p1, p0, Landroidx/fragment/app/p0;->h:Landroidx/lifecycle/C;

    iput-object p1, p0, Landroidx/fragment/app/p0;->i:Landroidx/lifecycle/C;

    return-void
.end method
