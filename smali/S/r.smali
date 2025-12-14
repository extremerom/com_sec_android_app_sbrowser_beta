.class public final LS/r;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:LS/t;

.field public b:LNc/B;

.field public c:LS/m;

.field public d:LT/a;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:LS/t;

.field public g:I


# direct methods
.method public constructor <init>(LS/t;Lkb/c;)V
    .locals 0

    iput-object p1, p0, LS/r;->f:LS/t;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LS/r;->e:Ljava/lang/Object;

    iget p1, p0, LS/r;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LS/r;->g:I

    iget-object p1, p0, LS/r;->f:LS/t;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, LS/t;->b(LNc/B;LS/m;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
