.class public final Lm/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/ContextThemeWrapper;

.field public final b:Landroid/view/LayoutInflater;

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:Ljava/lang/CharSequence;

.field public e:Landroid/view/View;

.field public f:Ljava/lang/CharSequence;

.field public g:Ljava/lang/CharSequence;

.field public h:Landroid/content/DialogInterface$OnClickListener;

.field public i:Ljava/lang/CharSequence;

.field public j:Landroid/content/DialogInterface$OnClickListener;

.field public k:Ljava/lang/CharSequence;

.field public l:Landroid/content/DialogInterface$OnClickListener;

.field public m:Z

.field public n:Landroid/content/DialogInterface$OnCancelListener;

.field public o:Landroid/content/DialogInterface$OnDismissListener;

.field public p:Landroid/content/DialogInterface$OnKeyListener;

.field public q:[Ljava/lang/CharSequence;

.field public r:Landroid/widget/ListAdapter;

.field public s:Landroid/content/DialogInterface$OnClickListener;

.field public t:I

.field public u:Landroid/view/View;

.field public v:[Z

.field public w:Z

.field public x:Z

.field public y:I

.field public z:Lw2/h;


# direct methods
.method public constructor <init>(Landroid/view/ContextThemeWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lm/h;->y:I

    iput-object p1, p0, Lm/h;->a:Landroid/view/ContextThemeWrapper;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lm/h;->m:Z

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lm/h;->b:Landroid/view/LayoutInflater;

    return-void
.end method
