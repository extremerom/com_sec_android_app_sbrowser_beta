.class public final LNc/g;
.super LNc/X;
.source "SourceFile"


# instance fields
.field public final i:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    invoke-direct {p0}, LNc/X;-><init>()V

    iput-object p1, p0, LNc/g;->i:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public final T()Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, LNc/g;->i:Ljava/lang/Thread;

    return-object p0
.end method
