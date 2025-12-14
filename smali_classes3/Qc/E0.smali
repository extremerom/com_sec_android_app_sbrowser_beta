.class public final LQc/E0;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:LQc/F0;

.field public c:I


# direct methods
.method public constructor <init>(LQc/F0;Lib/c;)V
    .locals 0

    iput-object p1, p0, LQc/E0;->b:LQc/F0;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LQc/E0;->a:Ljava/lang/Object;

    iget p1, p0, LQc/E0;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LQc/E0;->c:I

    iget-object p1, p0, LQc/E0;->b:LQc/F0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, LQc/F0;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
