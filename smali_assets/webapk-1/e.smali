.class public final enum Le;
.super Ljava/lang/Enum;
.source "chromium-webapk-1.dex-default--1"


# static fields
.field private static final synthetic $VALUES:[Le;

.field public static final Companion:Ld;

.field public static final enum ON_ANY:Le;

.field public static final enum ON_CREATE:Le;

.field public static final enum ON_DESTROY:Le;

.field public static final enum ON_PAUSE:Le;

.field public static final enum ON_RESUME:Le;

.field public static final enum ON_START:Le;

.field public static final enum ON_STOP:Le;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Le;

    const-string v1, "ON_CREATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le;->ON_CREATE:Le;

    new-instance v1, Le;

    const-string v2, "ON_START"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le;->ON_START:Le;

    new-instance v2, Le;

    const-string v3, "ON_RESUME"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Le;->ON_RESUME:Le;

    new-instance v3, Le;

    const-string v4, "ON_PAUSE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Le;->ON_PAUSE:Le;

    new-instance v4, Le;

    const-string v5, "ON_STOP"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Le;->ON_STOP:Le;

    new-instance v5, Le;

    const-string v6, "ON_DESTROY"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Le;->ON_DESTROY:Le;

    new-instance v6, Le;

    const-string v7, "ON_ANY"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Le;->ON_ANY:Le;

    filled-new-array/range {v0 .. v6}, [Le;

    move-result-object v0

    sput-object v0, Le;->$VALUES:[Le;

    new-instance v0, Ld;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Le;->Companion:Ld;

    return-void
.end method
