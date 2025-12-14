.class public final Lk0/i;
.super Lk0/q;
.source "SourceFile"


# instance fields
.field public final b:Lk0/c;


# direct methods
.method public constructor <init>(Lk0/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk0/i;->b:Lk0/c;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 0

    iget-object p0, p0, Lk0/i;->b:Lk0/c;

    invoke-virtual {p0}, Lk0/c;->c()V

    new-instance p0, LBb/a;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0
.end method
