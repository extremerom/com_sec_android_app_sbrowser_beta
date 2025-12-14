.class public final LC0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LC0/k;

.field public static final b:LC0/k;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, LC0/h;->e:LC0/h;

    sget-object v1, LC0/j;->a:[LAb/u;

    new-instance v1, LC0/k;

    const-string v2, "ScrollBy"

    invoke-direct {v1, v2, v0}, LC0/k;-><init>(Ljava/lang/String;Lsb/n;)V

    sput-object v1, LC0/d;->a:LC0/k;

    new-instance v1, LC0/k;

    const-string v2, "ScrollToIndex"

    invoke-direct {v1, v2, v0}, LC0/k;-><init>(Ljava/lang/String;Lsb/n;)V

    sput-object v1, LC0/d;->b:LC0/k;

    new-instance v1, LC0/k;

    const-string v2, "SetTextSubstitution"

    invoke-direct {v1, v2, v0}, LC0/k;-><init>(Ljava/lang/String;Lsb/n;)V

    return-void
.end method
