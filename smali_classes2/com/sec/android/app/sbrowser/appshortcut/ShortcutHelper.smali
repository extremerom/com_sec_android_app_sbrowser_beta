.class public Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/shortcut_helper/TerraceShortcutHelper$TerraceShortcutHelperClient;


# instance fields
.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDialog:Lm/l;

.field public sDelegate:Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$Delegate;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$Delegate;

    invoke-direct {v0}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$Delegate;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->sDelegate:Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$Delegate;

    invoke-static {p0}, Lcom/sec/terrace/browser/shortcut_helper/TerraceShortcutHelper;->setClient(Lcom/sec/terrace/browser/shortcut_helper/TerraceShortcutHelper$TerraceShortcutHelperClient;)V

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;-><init>()V

    return-object v0
.end method

.method private addShortcutToHomeScreen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZI)V
    .locals 6

    new-instance v4, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "REUSE_URL_MATCHING_TAB_ELSE_NEW_TAB"

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "com.sec.terrace.browser.webapp_id"

    invoke-virtual {v4, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.sec.terrace.browser.webapp_source"

    invoke-virtual {v4, p2, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "com.sec.terrace.browser.webapp_url_index"

    invoke-virtual {v4, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->sDelegate:Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$Delegate;

    move-object v1, p5

    move-object v2, p6

    move v3, p7

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$Delegate;->addShortcutToHomescreen(Ljava/lang/String;Landroid/graphics/Bitmap;ZLandroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->lambda$addShortcutWithRenameDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;Landroid/widget/EditText;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->lambda$addShortcutWithRenameDialog$0(Landroid/widget/EditText;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->lambda$addShortcutWithRenameDialog$2(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->lambda$addShortcutWithRenameDialog$3(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;)Lm/l;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->mDialog:Lm/l;

    return-object p0
.end method

.method public static declared-synchronized getOrCreateInstance()Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;
    .locals 4

    const-class v0, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;

    monitor-enter v0

    :try_start_0
    const-class v1, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;

    new-instance v2, Lcom/google/firebase/messaging/m;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Lcom/google/firebase/messaging/m;-><init>(I)V

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private synthetic lambda$addShortcutWithRenameDialog$0(Landroid/widget/EditText;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZILandroid/content/DialogInterface;I)V
    .locals 10

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->addShortcutToHomeScreen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZI)V

    return-void
.end method

.method private synthetic lambda$addShortcutWithRenameDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->dismissDialog()V

    return-void
.end method

.method private synthetic lambda$addShortcutWithRenameDialog$2(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p1, 0x5

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    or-int/lit8 p1, p1, 0x10

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->mDialog:Lm/l;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method private synthetic lambda$addShortcutWithRenameDialog$3(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p1, 0x42

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->mDialog:Lm/l;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lm/l;->g(I)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addShortcutWithRenameDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZI)V
    .locals 16

    move-object/from16 v10, p0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->dismissDialog()V

    const/16 v0, 0x12

    move/from16 v9, p8

    if-ne v9, v0, :cond_0

    invoke-direct/range {p0 .. p8}, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->addShortcutToHomeScreen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZI)V

    return-void

    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0010

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/EditText;

    const v1, 0x7f0b00a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f14006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v1}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    move-object/from16 v1, p5

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b00a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    const v1, 0x7f0b00a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    move-object/from16 v7, p6

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v1, Lm/k;

    const v2, 0x7f150009

    move-object/from16 v14, p1

    invoke-direct {v1, v14, v2}, Lm/k;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v0}, Lm/k;->setView(Landroid/view/View;)Lm/k;

    move-result-object v15

    new-instance v8, Lcom/sec/android/app/sbrowser/appshortcut/a;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v14, v8

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/app/sbrowser/appshortcut/a;-><init>(Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;Landroid/widget/EditText;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZI)V

    const v0, 0x7f140068

    invoke-virtual {v15, v0, v14}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/appshortcut/b;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v10}, Lcom/sec/android/app/sbrowser/appshortcut/b;-><init>(ILjava/lang/Object;)V

    const v2, 0x7f140069

    invoke-virtual {v0, v2, v1}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object v0

    iput-object v0, v10, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->mDialog:Lm/l;

    new-instance v0, LK6/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v10}, LK6/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v0, LFa/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v10}, LFa/e;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper$1;

    move-object/from16 p2, v0

    move-object/from16 p3, p0

    move-object/from16 p4, p1

    move-object/from16 p5, v11

    move-object/from16 p6, v13

    move-object/from16 p7, v12

    invoke-direct/range {p2 .. p7}, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper$1;-><init>(Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, v10, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v10, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->mDialog:Lm/l;

    iget-object v2, v10, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->setAnchor(Landroid/content/Context;Landroid/app/Dialog;Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object v0, v10, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->mDialog:Lm/l;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    :goto_0
    iget-object v0, v10, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->mDialog:Lm/l;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public dismissDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->mDialog:Lm/l;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->mDialog:Lm/l;

    invoke-virtual {v0}, Lm/y;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->mDialog:Lm/l;

    :cond_1
    return-void
.end method

.method public setAnchor(Landroid/view/View;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->mAnchor:Ljava/lang/ref/WeakReference;

    return-void
.end method
