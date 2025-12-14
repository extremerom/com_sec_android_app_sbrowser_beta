.class public final Lg0/b;
.super Lfb/i;
.source "SourceFile"

# interfaces
.implements Ld0/b;


# static fields
.field public static final d:Lg0/b;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Lf0/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lg0/b;

    sget-object v1, Lh0/b;->a:Lh0/b;

    sget-object v2, Lf0/c;->c:Lf0/c;

    invoke-direct {v0, v1, v1, v2}, Lg0/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lf0/c;)V

    sput-object v0, Lg0/b;->d:Lg0/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lf0/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg0/b;->a:Ljava/lang/Object;

    iput-object p2, p0, Lg0/b;->b:Ljava/lang/Object;

    iput-object p3, p0, Lg0/b;->c:Lf0/c;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lg0/b;->c:Lf0/c;

    invoke-virtual {p0, p1}, Lf0/c;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final g()I
    .locals 0

    iget-object p0, p0, Lg0/b;->c:Lf0/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Lf0/c;->b:I

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, LJc/j;

    iget-object v1, p0, Lg0/b;->c:Lf0/c;

    iget-object p0, p0, Lg0/b;->a:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, LJc/j;-><init>(Ljava/lang/Object;Ljava/util/Map;)V

    return-object v0
.end method
