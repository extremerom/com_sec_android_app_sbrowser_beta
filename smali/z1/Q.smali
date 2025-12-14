.class public final Lz1/Q;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:I

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lz1/V;

.field public g:I


# direct methods
.method public constructor <init>(Lz1/V;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lz1/Q;->f:Lz1/V;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lz1/Q;->e:Ljava/lang/Object;

    iget p1, p0, Lz1/Q;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lz1/Q;->g:I

    const/4 p1, 0x0

    iget-object v0, p0, Lz1/Q;->f:Lz1/V;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p0}, Lz1/V;->deleted$glance_appwidget_release(Landroid/content/Context;ILib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
