.class public final enum Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$ActionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$ActionType;

.field public static final enum ACTION_CANCEL:Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$ActionType;

.field public static final enum ACTION_NONE:Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$ActionType;

.field public static final enum ACTION_OK:Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$ActionType;


# direct methods
.method private static synthetic $values()[Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$ActionType;
    .locals 3

    sget-object v0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$ActionType;->ACTION_NONE:Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$ActionType;

    sget-object v1, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$ActionType;->ACTION_OK:Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$ActionType;

    sget-object v2, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$ActionType;->ACTION_CANCEL:Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$ActionType;

    filled-new-array {v0, v1, v2}, [Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$ActionType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$ActionType;

    const-string v1, "ACTION_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$ActionType;->ACTION_NONE:Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$ActionType;

    new-instance v0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$ActionType;

    const-string v1, "ACTION_OK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$ActionType;->ACTION_OK:Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$ActionType;

    new-instance v0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$ActionType;

    const-string v1, "ACTION_CANCEL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$ActionType;->ACTION_CANCEL:Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$ActionType;

    invoke-static {}, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$ActionType;->$values()[Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$ActionType;

    move-result-object v0

    sput-object v0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$ActionType;->$VALUES:[Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$ActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$ActionType;
    .locals 1

    const-class v0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$ActionType;

    return-object p0
.end method

.method public static values()[Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$ActionType;
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$ActionType;->$VALUES:[Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$ActionType;

    invoke-virtual {v0}, [Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$ActionType;

    return-object v0
.end method
