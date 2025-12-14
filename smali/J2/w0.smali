.class public final LJ2/w0;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:LJ2/C0;

.field public b:LJ2/G;

.field public c:Ljava/lang/String;

.field public d:[Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:I

.field public synthetic h:Ljava/lang/Object;

.field public final synthetic i:LJ2/C0;

.field public j:I


# direct methods
.method public constructor <init>(LJ2/C0;Lkb/c;)V
    .locals 0

    iput-object p1, p0, LJ2/w0;->i:LJ2/C0;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, LJ2/w0;->h:Ljava/lang/Object;

    iget p1, p0, LJ2/w0;->j:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LJ2/w0;->j:I

    const/4 p1, 0x0

    iget-object v0, p0, LJ2/w0;->i:LJ2/C0;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p0}, LJ2/C0;->c(LJ2/C0;LJ2/m0;ILkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
