.class public abstract LC0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LC0/k;

.field public static final b:LC0/k;

.field public static final c:LC0/k;

.field public static final d:LC0/k;

.field public static final e:LC0/k;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, LC0/h;->b:LC0/h;

    new-instance v1, LC0/k;

    const-string v2, "ContentDescription"

    invoke-direct {v1, v2, v0}, LC0/k;-><init>(Ljava/lang/String;Lsb/n;)V

    sput-object v1, LC0/i;->a:LC0/k;

    sget-object v0, LC0/j;->a:[LAb/u;

    new-instance v0, LC0/k;

    const-string v1, "CollectionInfo"

    invoke-direct {v0, v1}, LC0/k;-><init>(Ljava/lang/String;)V

    sput-object v0, LC0/i;->b:LC0/k;

    new-instance v0, LC0/k;

    const-string v1, "IsTraversalGroup"

    invoke-direct {v0, v1}, LC0/k;-><init>(Ljava/lang/String;)V

    sget-object v0, LC0/h;->d:LC0/h;

    new-instance v1, LC0/k;

    const-string v2, "TraversalIndex"

    invoke-direct {v1, v2, v0}, LC0/k;-><init>(Ljava/lang/String;Lsb/n;)V

    new-instance v0, LC0/k;

    const-string v1, "HorizontalScrollAxisRange"

    invoke-direct {v0, v1}, LC0/k;-><init>(Ljava/lang/String;)V

    sput-object v0, LC0/i;->c:LC0/k;

    new-instance v0, LC0/k;

    const-string v1, "VerticalScrollAxisRange"

    invoke-direct {v0, v1}, LC0/k;-><init>(Ljava/lang/String;)V

    sput-object v0, LC0/i;->d:LC0/k;

    sget-object v0, LC0/h;->c:LC0/h;

    new-instance v1, LC0/k;

    const-string v2, "Role"

    invoke-direct {v1, v2, v0}, LC0/k;-><init>(Ljava/lang/String;Lsb/n;)V

    new-instance v0, LC0/k;

    const-string v1, "IndexForKey"

    invoke-direct {v0, v1}, LC0/k;-><init>(Ljava/lang/String;)V

    sput-object v0, LC0/i;->e:LC0/k;

    return-void
.end method
