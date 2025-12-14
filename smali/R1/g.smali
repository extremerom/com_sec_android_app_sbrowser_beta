.class public final LR1/g;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:LR1/m;

.field public c:I


# direct methods
.method public constructor <init>(LR1/m;Lib/c;)V
    .locals 0

    iput-object p1, p0, LR1/g;->b:LR1/m;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LR1/g;->a:Ljava/lang/Object;

    iget p1, p0, LR1/g;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LR1/g;->c:I

    iget-object p1, p0, LR1/g;->b:LR1/m;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, LR1/m;->provideGlance(Landroid/content/Context;Lx1/o;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
