.class public final LZ1/j;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:LZ1/p;

.field public b:Landroid/content/Context;

.field public c:Ljava/util/LinkedHashMap;

.field public d:Ljava/util/Iterator;

.field public e:Ljava/util/LinkedHashMap;

.field public f:Ljava/lang/Object;

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:LZ1/p;

.field public i:I


# direct methods
.method public constructor <init>(LZ1/p;Lkb/c;)V
    .locals 0

    iput-object p1, p0, LZ1/j;->h:LZ1/p;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LZ1/j;->g:Ljava/lang/Object;

    iget p1, p0, LZ1/j;->i:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LZ1/j;->i:I

    iget-object p1, p0, LZ1/j;->h:LZ1/p;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, LZ1/p;->o(Landroid/content/Context;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
