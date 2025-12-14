.class public abstract Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$Companion;,
        Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$Listener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\'\u0018\u0000 l2\u00020\u0001:\u0002lmB\'\u0008\u0004\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0005H$\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0005H$\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u000f\u0010\u000f\u001a\u00020\u000eH$\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0005H$\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001f\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0012H$\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\'\u0010\u001d\u001a\u00020\u001c2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ-\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u000e2\u0006\u0010 \u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u001d\u0010!J\u001f\u0010\"\u001a\u00020\u001c2\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u000eH\u0014\u00a2\u0006\u0004\u0008\"\u0010#J\u0017\u0010$\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0005H\u0004\u00a2\u0006\u0004\u0008$\u0010\u0014J\r\u0010%\u001a\u00020\u001c\u00a2\u0006\u0004\u0008%\u0010&J\r\u0010\'\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\'\u0010(J\r\u0010)\u001a\u00020\u001c\u00a2\u0006\u0004\u0008)\u0010&J\u0017\u0010+\u001a\u00020\u001c2\u0006\u0010*\u001a\u00020\u0012H\u0004\u00a2\u0006\u0004\u0008+\u0010,J\u000f\u0010-\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008-\u0010\u000cJ\u0017\u00100\u001a\u00020/2\u0006\u0010.\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u00080\u00101J\u000f\u00102\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u00082\u0010&J\u000f\u00103\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u00083\u0010&J\u000f\u00105\u001a\u000204H\u0002\u00a2\u0006\u0004\u00085\u00106J\u000f\u00107\u001a\u00020\u0018H\u0003\u00a2\u0006\u0004\u00087\u00108J\u000f\u00109\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u00089\u0010&J\u000f\u0010:\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008:\u0010&J\u000f\u0010;\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008;\u0010\u0010J\u0017\u0010=\u001a\u00020\u001c2\u0006\u0010<\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008=\u0010,J\u0017\u0010>\u001a\u00020\u001c2\u0006\u0010\u0011\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008>\u0010?R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010@\u001a\u0004\u0008A\u0010BR\u001d\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010C\u001a\u0004\u0008D\u0010ER\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010FR\"\u0010\u0011\u001a\u00020\u00058\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010G\u001a\u0004\u0008H\u0010\u000c\"\u0004\u0008I\u0010?R\u0018\u0010J\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008J\u0010KR\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010LR\u0018\u0010N\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008N\u0010OR\u0018\u0010Q\u001a\u0004\u0018\u00010P8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Q\u0010RR\u0018\u0010T\u001a\u0004\u0018\u00010S8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008T\u0010UR\u0018\u0010V\u001a\u0004\u0018\u00010S8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008V\u0010UR\u0018\u0010X\u001a\u0004\u0018\u00010W8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008X\u0010YR\u0016\u0010\u001b\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010ZR\u0016\u0010[\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008[\u0010\\R\u0014\u0010^\u001a\u00020]8\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008^\u0010_R\u0014\u0010a\u001a\u00020`8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008a\u0010bR\u0014\u0010d\u001a\u00020c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008d\u0010eR\u0014\u0010g\u001a\u00020f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008g\u0010hR\u0014\u0010j\u001a\u00020i8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008j\u0010k\u00a8\u0006n"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;",
        "",
        "Landroid/content/Context;",
        "context",
        "",
        "",
        "groupList",
        "Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$Listener;",
        "listener",
        "<init>",
        "(Landroid/content/Context;Ljava/util/List;Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$Listener;)V",
        "getEditTextDefaultValue",
        "()Ljava/lang/String;",
        "getDialogTitle",
        "",
        "getPositiveButtonTextId",
        "()I",
        "groupName",
        "",
        "isDuplicatedGroupName",
        "(Ljava/lang/String;)Z",
        "isColorChanged",
        "canApplyChange",
        "(Ljava/lang/String;Z)Z",
        "Landroid/view/View;",
        "anchor",
        "currentGroupName",
        "currentGroupColorId",
        "Ldb/r;",
        "showDialog",
        "(Landroid/view/View;Ljava/lang/String;I)V",
        "xOffset",
        "yOffset",
        "(IILjava/lang/String;I)V",
        "initializeDialog",
        "(Ljava/lang/String;I)V",
        "isAvailableGroupName",
        "dismissDialog",
        "()V",
        "isShowing",
        "()Z",
        "updateAnchorView",
        "enabled",
        "setPositiveButtonEnabled",
        "(Z)V",
        "getEditedGroupName",
        "dialogContent",
        "Lm/l;",
        "createDialog",
        "(Landroid/view/View;)Lm/l;",
        "onNegativeButtonClicked",
        "onPositiveButtonClicked",
        "Landroid/text/SpannableStringBuilder;",
        "createSpanString",
        "()Landroid/text/SpannableStringBuilder;",
        "inflateDialogLayout",
        "()Landroid/view/View;",
        "initializeEditText",
        "initializeGroupColorPicker",
        "getHighlightColor",
        "visible",
        "updateSoftInputMode",
        "updatePositiveButton",
        "(Ljava/lang/String;)V",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "Ljava/util/List;",
        "getGroupList",
        "()Ljava/util/List;",
        "Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$Listener;",
        "Ljava/lang/String;",
        "getGroupName",
        "setGroupName",
        "dialog",
        "Lm/l;",
        "Landroid/view/View;",
        "Landroid/widget/TextView;",
        "titleErrorText",
        "Landroid/widget/TextView;",
        "Landroid/widget/EditText;",
        "editGroupNameView",
        "Landroid/widget/EditText;",
        "Landroid/widget/Button;",
        "negativeButton",
        "Landroid/widget/Button;",
        "positiveButton",
        "Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorPicker;",
        "groupColorPicker",
        "Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorPicker;",
        "I",
        "isGroupColorChanged",
        "Z",
        "Landroid/text/TextWatcher;",
        "textWatcher",
        "Landroid/text/TextWatcher;",
        "Landroid/content/DialogInterface$OnDismissListener;",
        "onDismissListener",
        "Landroid/content/DialogInterface$OnDismissListener;",
        "Landroid/widget/TextView$OnEditorActionListener;",
        "onEditorActionListener",
        "Landroid/widget/TextView$OnEditorActionListener;",
        "Landroid/view/View$OnKeyListener;",
        "onKeyListener",
        "Landroid/view/View$OnKeyListener;",
        "Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ColorChangedListener;",
        "colorChangedListener",
        "Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ColorChangedListener;",
        "Companion",
        "Listener",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private anchor:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final colorChangedListener:Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ColorChangedListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentGroupColorId:I

.field private dialog:Lm/l;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private editGroupNameView:Landroid/widget/EditText;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private groupColorPicker:Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorPicker;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final groupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private groupName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isGroupColorChanged:Z

.field private final listener:Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$Listener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private negativeButton:Landroid/widget/Button;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final onDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final onKeyListener:Landroid/view/View$OnKeyListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private positiveButton:Landroid/widget/Button;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final textWatcher:Landroid/text/TextWatcher;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatInvalid"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private titleErrorText:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->Companion:Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$Listener;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$Listener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$Listener;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupList"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->groupList:Ljava/util/List;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->listener:Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$Listener;

    const-string p1, ""

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->groupName:Ljava/lang/String;

    new-instance p1, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$textWatcher$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$textWatcher$1;-><init>(Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->textWatcher:Landroid/text/TextWatcher;

    new-instance p1, LFa/c;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, LFa/c;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    new-instance p1, LFa/d;

    invoke-direct {p1, p2, p0}, LFa/d;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    new-instance p1, LFa/e;

    invoke-direct {p1, p2, p0}, LFa/e;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->onKeyListener:Landroid/view/View$OnKeyListener;

    new-instance p1, LAa/a;

    const/4 p2, 0x5

    invoke-direct {p1, p2, p0}, LAa/a;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->colorChangedListener:Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ColorChangedListener;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->colorChangedListener$lambda$3(Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;Z)V

    return-void
.end method

.method public static final synthetic access$getEditGroupNameView$p(Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->editGroupNameView:Landroid/widget/EditText;

    return-object p0
.end method

.method public static final synthetic access$getTitleErrorText$p(Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->titleErrorText:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$updatePositiveButton(Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->updatePositiveButton(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->onEditorActionListener$lambda$1(Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->createDialog$lambda$5(Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static final colorChangedListener$lambda$3(Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->isGroupColorChanged:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->getEditedGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->updatePositiveButton(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->groupColorPicker:Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorPicker;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorPicker;->getSelectedColorId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->sendSALoggingForTabGroupDialogColorChange(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private final createDialog(Landroid/view/View;)Lm/l;
    .locals 3

    new-instance v0, Lm/k;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->context:Landroid/content/Context;

    const v2, 0x7f1501c5

    invoke-direct {v0, v1, v2}, Lm/k;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->createSpanString()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm/k;->setTitle(Ljava/lang/CharSequence;)Lm/k;

    invoke-virtual {v0, p1}, Lm/k;->setView(Landroid/view/View;)Lm/k;

    new-instance p1, LFa/f;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, LFa/f;-><init>(Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;I)V

    const v1, 0x7f1402c1

    invoke-virtual {v0, v1, p1}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->getPositiveButtonTextId()I

    move-result p1

    new-instance v1, LFa/f;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LFa/f;-><init>(Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;I)V

    invoke-virtual {v0, p1, v1}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object p0

    const-string p1, "create(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final createDialog$lambda$4(Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->onNegativeButtonClicked()V

    return-void
.end method

.method private static final createDialog$lambda$5(Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->onPositiveButtonClicked()V

    return-void
.end method

.method private final createSpanString()Landroid/text/SpannableStringBuilder;
    .locals 4

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->context:Landroid/content/Context;

    const v2, 0x7f060102

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->getDialogTitle()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v2, 0x21

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, p0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->onDismissListener$lambda$0(Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->onKeyListener$lambda$2(Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->createDialog$lambda$4(Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private final getEditedGroupName()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->editGroupNameView:Landroid/widget/EditText;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LKc/k;->Q(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\n"

    invoke-static {p0, v0}, LKc/k;->q(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " "

    invoke-static {p0, v0, v1}, LKc/r;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-static {p0}, LKc/k;->Q(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getHighlightColor()I
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isNightModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->context:Landroid/content/Context;

    const v0, 0x7f060d9f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->context:Landroid/content/Context;

    const v0, 0x1010099

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const-string v0, "obtainStyledAttributes(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    move p0, v0

    :goto_0
    return p0
.end method

.method private final inflateDialogLayout()Landroid/view/View;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e08ce

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0d6a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->titleErrorText:Landroid/widget/TextView;

    const v1, 0x7f0b048d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->editGroupNameView:Landroid/widget/EditText;

    const v1, 0x7f0b055a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorPicker;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->groupColorPicker:Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorPicker;

    return-object v0
.end method

.method private final initializeEditText()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->getEditTextDefaultValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->editGroupNameView:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->editGroupNameView:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->getHighlightColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHighlightColor(I)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->editGroupNameView:Landroid/widget/EditText;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/EditText;->setSelection(II)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->editGroupNameView:Landroid/widget/EditText;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->editGroupNameView:Landroid/widget/EditText;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil;->getMaxLengthFilter(Landroid/content/Context;)[Landroid/text/InputFilter;

    move-result-object v2

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    aput-object v2, v3, v0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->editGroupNameView:Landroid/widget/EditText;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->editGroupNameView:Landroid/widget/EditText;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->onKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->editGroupNameView:Landroid/widget/EditText;

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :cond_7
    return-void
.end method

.method private final initializeGroupColorPicker()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->groupColorPicker:Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorPicker;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->currentGroupColorId:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->colorChangedListener:Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ColorChangedListener;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorPicker;->showColorList(ILcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ColorChangedListener;)V

    :cond_0
    return-void
.end method

.method private static final onDismissListener$lambda$0(Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private static final onEditorActionListener$lambda$1(Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p3, 0x42

    if-eq p1, p3, :cond_1

    :cond_0
    const/4 p1, 0x6

    if-ne p2, p1, :cond_5

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->getEditedGroupName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->positiveButton:Landroid/widget/Button;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->isGroupColorChanged:Z

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->canApplyChange(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_3

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->listener:Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$Listener;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->groupColorPicker:Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorPicker;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorPicker;->getSelectedColorId()I

    move-result p3

    goto :goto_1

    :cond_4
    const/4 p3, -0x1

    :goto_1
    invoke-interface {p2, p1, p3}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$Listener;->onPositiveButtonClicked(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->dismissDialog()V

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method private static final onKeyListener$lambda$2(Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p1, 0x43

    const/4 p3, 0x0

    if-ne p2, p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->getEditedGroupName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->isDuplicatedGroupName(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->titleErrorText:Landroid/widget/TextView;

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x14

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->groupColorPicker:Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorPicker;

    const-string p2, "TabGroupNameDialog"

    if-eqz p1, :cond_1

    const-string p1, "[onKey] GroupColorPicker request focus"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->groupColorPicker:Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorPicker;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result p0

    return p0

    :cond_1
    const-string p1, "[onKey] NegativeButton request focus"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->negativeButton:Landroid/widget/Button;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result p3

    :cond_2
    :goto_0
    return p3
.end method

.method private final onNegativeButtonClicked()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->editGroupNameView:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->sendSALoggingForTabGroupDialogCancel()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->dismissDialog()V

    return-void
.end method

.method private final onPositiveButtonClicked()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->setFocusedInstance(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->getEditedGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->isDuplicatedGroupName(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->updatePositiveButton(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->isGroupColorChanged:Z

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->titleErrorText:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f141021

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->listener:Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$Listener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->groupColorPicker:Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorPicker;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorPicker;->getSelectedColorId()I

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    :goto_0
    invoke-interface {v1, v0, v2}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$Listener;->onPositiveButtonClicked(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->dismissDialog()V

    :cond_3
    :goto_1
    return-void
.end method

.method private final updatePositiveButton(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->isGroupColorChanged:Z

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->canApplyChange(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->setPositiveButtonEnabled(Z)V

    return-void
.end method

.method private final updateSoftInputMode(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    or-int/lit8 p1, p1, 0x10

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->dialog:Lm/l;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->dialog:Lm/l;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public abstract canApplyChange(Ljava/lang/String;Z)Z
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final dismissDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->dialog:Lm/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lm/y;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->isGroupColorChanged:Z

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->context:Landroid/content/Context;

    return-object p0
.end method

.method public abstract getDialogTitle()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getEditTextDefaultValue()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final getGroupList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->groupList:Ljava/util/List;

    return-object p0
.end method

.method public final getGroupName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->groupName:Ljava/lang/String;

    return-object p0
.end method

.method public abstract getPositiveButtonTextId()I
.end method

.method public initializeDialog(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "currentGroupName"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->groupName:Ljava/lang/String;

    iput p2, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->currentGroupColorId:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->getEditedGroupName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->updatePositiveButton(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->editGroupNameView:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isAccessoryKeyboardConnected(Landroid/app/Activity;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->updateSoftInputMode(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->initializeEditText()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->initializeGroupColorPicker()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->dialog:Lm/l;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->dialog:Lm/l;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Lm/l;->g(I)Landroid/widget/Button;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, p2

    :goto_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->negativeButton:Landroid/widget/Button;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->dialog:Lm/l;

    if-eqz p1, :cond_3

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lm/l;->g(I)Landroid/widget/Button;

    move-result-object p2

    :cond_3
    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->positiveButton:Landroid/widget/Button;

    return-void
.end method

.method public final isAvailableGroupName(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "groupName"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x800

    if-ne p0, p1, :cond_2

    :goto_0
    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public abstract isDuplicatedGroupName(Ljava/lang/String;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final isShowing()Z
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->dialog:Lm/l;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public final setPositiveButtonEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->positiveButton:Landroid/widget/Button;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public final showDialog(IILjava/lang/String;I)V
    .locals 3
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "currentGroupName"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->inflateDialogLayout()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->createDialog(Landroid/view/View;)Lm/l;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->dialog:Lm/l;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->anchor:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->dialog:Lm/l;

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->setAnchor(Landroid/content/Context;Landroid/app/Dialog;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_1

    if-eqz p2, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->dialog:Lm/l;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    invoke-virtual {p0, p3, p4}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->initializeDialog(Ljava/lang/String;I)V

    return-void
.end method

.method public final showDialog(Landroid/view/View;Ljava/lang/String;I)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "currentGroupName"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->inflateDialogLayout()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->createDialog(Landroid/view/View;)Lm/l;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->dialog:Lm/l;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->anchor:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->dialog:Lm/l;

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->setAnchor(Landroid/content/Context;Landroid/app/Dialog;Landroid/view/View;)V

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->initializeDialog(Ljava/lang/String;I)V

    return-void
.end method

.method public final updateAnchorView()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->dialog:Lm/l;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lm/y;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->dialog:Lm/l;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->anchor:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->setAnchor(Landroid/content/Context;Landroid/app/Dialog;Landroid/view/View;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->dialog:Lm/l;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_2
    return-void
.end method
