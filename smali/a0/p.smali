.class public final La0/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:La0/q;


# direct methods
.method public constructor <init>(La0/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La0/p;->a:La0/q;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object p0, p0, La0/p;->a:La0/q;

    iget v0, p0, La0/q;->z:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La0/q;->z:I

    return-void
.end method
