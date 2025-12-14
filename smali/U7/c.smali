.class public final synthetic LU7/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:LU7/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LU7/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LU7/c;->a:LU7/c;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, LT7/b;

    check-cast p2, LT7/b;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method
