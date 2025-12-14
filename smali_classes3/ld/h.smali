.class public final Lld/h;
.super Lwd/d;
.source "SourceFile"


# instance fields
.field public final synthetic m:Lld/i;


# direct methods
.method public constructor <init>(Lld/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lld/h;->m:Lld/i;

    return-void
.end method


# virtual methods
.method public final j()V
    .locals 0

    iget-object p0, p0, Lld/h;->m:Lld/i;

    invoke-virtual {p0}, Lld/i;->cancel()V

    return-void
.end method
