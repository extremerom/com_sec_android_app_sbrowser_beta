.class public final Lxc/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxc/n;


# static fields
.field public static final a:Lxc/a;

.field public static final b:Lxc/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lxc/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lxc/a;->a:Lxc/a;

    new-instance v0, Lxc/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lxc/a;->b:Lxc/a;

    return-void
.end method


# virtual methods
.method public lock()V
    .locals 0

    return-void
.end method

.method public unlock()V
    .locals 0

    return-void
.end method
