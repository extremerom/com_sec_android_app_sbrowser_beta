.class public final LS/a0;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:LS/b0;

.field public b:J

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:LS/b0;

.field public e:I


# direct methods
.method public constructor <init>(LS/b0;Lkb/c;)V
    .locals 0

    iput-object p1, p0, LS/a0;->d:LS/b0;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, LS/a0;->c:Ljava/lang/Object;

    iget p1, p0, LS/a0;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LS/a0;->e:I

    const-wide/16 v3, 0x0

    iget-object v0, p0, LS/a0;->d:LS/b0;

    const-wide/16 v1, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, LS/b0;->g(JJLib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
