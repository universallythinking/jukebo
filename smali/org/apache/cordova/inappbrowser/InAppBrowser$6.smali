.class Lorg/apache/cordova/inappbrowser/InAppBrowser$6;
.super Ljava/lang/Object;
.source "InAppBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/inappbrowser/InAppBrowser;->showWebPage(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

.field final synthetic val$thatWebView:Lorg/apache/cordova/CordovaWebView;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/cordova/inappbrowser/InAppBrowser;Ljava/lang/String;Lorg/apache/cordova/CordovaWebView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 578
    iput-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    iput-object p2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->val$thatWebView:Lorg/apache/cordova/CordovaWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dpToPixels(I)I
    .locals 4
    .param p1, "dipValue"    # I

    .prologue
    .line 585
    const/4 v1, 0x1

    int-to-float v2, p1

    iget-object v3, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    iget-object v3, v3, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 587
    invoke-interface {v3}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 585
    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v0, v1

    .line 590
    .local v0, "value":I
    return v0
.end method


# virtual methods
.method public run()V
    .locals 34
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->dialog:Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$000(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;

    move-result-object v30

    if-eqz v30, :cond_0

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->dialog:Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$000(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;->dismiss()V

    .line 602
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    new-instance v31, Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v32

    const v33, 0x1030006

    invoke-direct/range {v31 .. v33}, Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;-><init>(Landroid/content/Context;I)V

    # setter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->dialog:Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;
    invoke-static/range {v30 .. v31}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$002(Lorg/apache/cordova/inappbrowser/InAppBrowser;Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;)Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->dialog:Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$000(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;->getWindow()Landroid/view/Window;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v30

    const v31, 0x1030002

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->dialog:Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$000(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;

    move-result-object v30

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;->requestWindowFeature(I)Z

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->dialog:Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$000(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;

    move-result-object v30

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;->setCancelable(Z)V

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->dialog:Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$000(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v31, v0

    # invokes: Lorg/apache/cordova/inappbrowser/InAppBrowser;->getInAppBrowser()Lorg/apache/cordova/inappbrowser/InAppBrowser;
    invoke-static/range {v31 .. v31}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$300(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;->setInAppBroswer(Lorg/apache/cordova/inappbrowser/InAppBrowser;)V

    .line 609
    new-instance v25, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v30

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 610
    .local v25, "main":Landroid/widget/LinearLayout;
    const/16 v30, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 613
    new-instance v29, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 615
    .local v29, "toolbar":Landroid/widget/RelativeLayout;
    const v30, -0x333334

    invoke-virtual/range {v29 .. v30}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 616
    new-instance v30, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v31, -0x1

    const/16 v32, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->dpToPixels(I)I

    move-result v32

    invoke-direct/range {v30 .. v32}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v29 .. v30}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 617
    const/16 v30, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->dpToPixels(I)I

    move-result v30

    const/16 v31, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->dpToPixels(I)I

    move-result v31

    const/16 v32, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->dpToPixels(I)I

    move-result v32

    const/16 v33, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->dpToPixels(I)I

    move-result v33

    invoke-virtual/range {v29 .. v33}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 618
    const/16 v30, 0x3

    invoke-virtual/range {v29 .. v30}, Landroid/widget/RelativeLayout;->setHorizontalGravity(I)V

    .line 619
    const/16 v30, 0x30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/RelativeLayout;->setVerticalGravity(I)V

    .line 622
    new-instance v5, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v5, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 623
    .local v5, "actionButtonContainer":Landroid/widget/RelativeLayout;
    new-instance v30, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v31, -0x2

    const/16 v32, -0x2

    invoke-direct/range {v30 .. v32}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 624
    const/16 v30, 0x3

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setHorizontalGravity(I)V

    .line 625
    const/16 v30, 0x10

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setVerticalGravity(I)V

    .line 626
    const/16 v30, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 629
    new-instance v9, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v9, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 630
    .local v9, "back":Landroid/widget/ImageButton;
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v30, -0x2

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-direct {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 631
    .local v11, "backLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v30, 0x5

    move/from16 v0, v30

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 632
    invoke-virtual {v9, v11}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 633
    const-string v30, "Back Button"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 634
    const/16 v30, 0x2

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/widget/ImageButton;->setId(I)V

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 636
    .local v6, "activityRes":Landroid/content/res/Resources;
    const-string v30, "ic_action_previous_item"

    const-string v31, "drawable"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v6, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 637
    .local v12, "backResId":I
    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 638
    .local v10, "backIcon":Landroid/graphics/drawable/Drawable;
    sget v30, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v31, 0x10

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_b

    .line 639
    const/16 v30, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 642
    :goto_0
    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 643
    sget-object v30, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 644
    const/16 v30, 0x0

    const/16 v31, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->dpToPixels(I)I

    move-result v31

    const/16 v32, 0x0

    const/16 v33, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->dpToPixels(I)I

    move-result v33

    move/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 645
    sget v30, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v31, 0x10

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_1

    .line 646
    invoke-virtual {v9}, Landroid/widget/ImageButton;->getAdjustViewBounds()Z

    .line 648
    :cond_1
    new-instance v30, Lorg/apache/cordova/inappbrowser/InAppBrowser$6$1;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6$1;-><init>(Lorg/apache/cordova/inappbrowser/InAppBrowser$6;)V

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 655
    new-instance v20, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v30

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 656
    .local v20, "forward":Landroid/widget/ImageButton;
    new-instance v21, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v30, -0x2

    const/16 v31, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 657
    .local v21, "forwardLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v30, 0x1

    const/16 v31, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 658
    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 659
    const-string v30, "Forward Button"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 660
    const/16 v30, 0x3

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move-object/from16 v0, v20

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setId(I)V

    .line 661
    const-string v30, "ic_action_next_item"

    const-string v31, "drawable"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v6, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    .line 662
    .local v23, "fwdResId":I
    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    .line 663
    .local v22, "fwdIcon":Landroid/graphics/drawable/Drawable;
    sget v30, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v31, 0x10

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_c

    .line 664
    const/16 v30, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 667
    :goto_1
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 668
    sget-object v30, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 669
    const/16 v30, 0x0

    const/16 v31, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->dpToPixels(I)I

    move-result v31

    const/16 v32, 0x0

    const/16 v33, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->dpToPixels(I)I

    move-result v33

    move-object/from16 v0, v20

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 670
    sget v30, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v31, 0x10

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_2

    .line 671
    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageButton;->getAdjustViewBounds()Z

    .line 673
    :cond_2
    new-instance v30, Lorg/apache/cordova/inappbrowser/InAppBrowser$6$2;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6$2;-><init>(Lorg/apache/cordova/inappbrowser/InAppBrowser$6;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    new-instance v31, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    # setter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->edittext:Landroid/widget/EditText;
    invoke-static/range {v30 .. v31}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$502(Lorg/apache/cordova/inappbrowser/InAppBrowser;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 681
    new-instance v28, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v30, -0x1

    const/16 v31, -0x1

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 682
    .local v28, "textLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v30, 0x1

    const/16 v31, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 683
    const/16 v30, 0x0

    const/16 v31, 0x5

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->edittext:Landroid/widget/EditText;
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$500(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->edittext:Landroid/widget/EditText;
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$500(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v30

    const/16 v31, 0x4

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setId(I)V

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->edittext:Landroid/widget/EditText;
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$500(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v30

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->edittext:Landroid/widget/EditText;
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$500(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->val$url:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->edittext:Landroid/widget/EditText;
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$500(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v30

    const/16 v31, 0x10

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setInputType(I)V

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->edittext:Landroid/widget/EditText;
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$500(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v30

    const/16 v31, 0x2

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->edittext:Landroid/widget/EditText;
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$500(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v30

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setInputType(I)V

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->edittext:Landroid/widget/EditText;
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$500(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v30

    new-instance v31, Lorg/apache/cordova/inappbrowser/InAppBrowser$6$3;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6$3;-><init>(Lorg/apache/cordova/inappbrowser/InAppBrowser$6;)V

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 703
    new-instance v14, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v14, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 704
    .local v14, "close":Landroid/widget/ImageButton;
    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v30, -0x2

    const/16 v31, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 705
    .local v16, "closeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v30, 0xb

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 706
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 707
    const-string v30, "Close Button"

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 708
    const/16 v30, 0x5

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/ImageButton;->setId(I)V

    .line 709
    const-string v30, "ic_action_remove"

    const-string v31, "drawable"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v6, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    .line 710
    .local v17, "closeResId":I
    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 711
    .local v15, "closeIcon":Landroid/graphics/drawable/Drawable;
    sget v30, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v31, 0x10

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_d

    .line 712
    const/16 v30, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 715
    :goto_2
    invoke-virtual {v14, v15}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 716
    sget-object v30, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 717
    const/16 v30, 0x0

    const/16 v31, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->dpToPixels(I)I

    move-result v31

    const/16 v32, 0x0

    const/16 v33, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->dpToPixels(I)I

    move-result v33

    move/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 718
    sget v30, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v31, 0x10

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_3

    .line 719
    invoke-virtual {v14}, Landroid/widget/ImageButton;->getAdjustViewBounds()Z

    .line 721
    :cond_3
    new-instance v30, Lorg/apache/cordova/inappbrowser/InAppBrowser$6$4;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6$4;-><init>(Lorg/apache/cordova/inappbrowser/InAppBrowser$6;)V

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    new-instance v31, Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    # setter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;
    invoke-static/range {v30 .. v31}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$102(Lorg/apache/cordova/inappbrowser/InAppBrowser;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$100(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v30

    new-instance v31, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v32, -0x1

    const/16 v33, -0x1

    invoke-direct/range {v31 .. v33}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v30 .. v31}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$100(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v30

    const/16 v31, 0x6

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/webkit/WebView;->setId(I)V

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$100(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v30

    new-instance v31, Lorg/apache/cordova/inappbrowser/InAppBrowser$6$5;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->val$thatWebView:Lorg/apache/cordova/CordovaWebView;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6$5;-><init>(Lorg/apache/cordova/inappbrowser/InAppBrowser$6;Lorg/apache/cordova/CordovaWebView;)V

    invoke-virtual/range {v30 .. v31}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 774
    new-instance v13, Lorg/apache/cordova/inappbrowser/InAppBrowser$InAppBrowserClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->val$thatWebView:Lorg/apache/cordova/CordovaWebView;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->edittext:Landroid/widget/EditText;
    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$500(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v13, v0, v1, v2}, Lorg/apache/cordova/inappbrowser/InAppBrowser$InAppBrowserClient;-><init>(Lorg/apache/cordova/inappbrowser/InAppBrowser;Lorg/apache/cordova/CordovaWebView;Landroid/widget/EditText;)V

    .line 775
    .local v13, "client":Landroid/webkit/WebViewClient;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$100(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$100(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v27

    .line 777
    .local v27, "settings":Landroid/webkit/WebSettings;
    const/16 v30, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 778
    const/16 v30, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->showZoomControls:Z
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$900(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z

    move-result v30

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 780
    sget-object v30, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 782
    sget v30, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v31, 0x11

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_4

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->mediaPlaybackRequiresUserGesture:Z
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$1000(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z

    move-result v30

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 786
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->preferences:Lorg/apache/cordova/CordovaPreferences;
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$1100(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/CordovaPreferences;

    move-result-object v30

    const-string v31, "OverrideUserAgent"

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 787
    .local v26, "overrideUserAgent":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->preferences:Lorg/apache/cordova/CordovaPreferences;
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$1200(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/CordovaPreferences;

    move-result-object v30

    const-string v31, "AppendUserAgent"

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 789
    .local v8, "appendUserAgent":Ljava/lang/String;
    if-eqz v26, :cond_5

    .line 790
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 792
    :cond_5
    if-eqz v8, :cond_6

    .line 793
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v27 .. v27}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 797
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 798
    .local v7, "appSettings":Landroid/os/Bundle;
    if-nez v7, :cond_e

    const/16 v19, 0x1

    .line 799
    .local v19, "enableDatabase":Z
    :goto_3
    if-eqz v19, :cond_7

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v30

    const-string v31, "inAppBrowserDB"

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    .line 801
    .local v18, "databasePath":Ljava/lang/String;
    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 802
    const/16 v30, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 804
    .end local v18    # "databasePath":Ljava/lang/String;
    :cond_7
    const/16 v30, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->clearAllCache:Z
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$1300(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z

    move-result v30

    if-eqz v30, :cond_f

    .line 807
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 812
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$100(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->val$url:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$100(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v30

    const/16 v31, 0x6

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/webkit/WebView;->setId(I)V

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$100(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v30

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$100(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v31, v0

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->useWideViewPort:Z
    invoke-static/range {v31 .. v31}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$1500(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$100(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/webkit/WebView;->requestFocus()Z

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$100(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    .line 820
    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 821
    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 824
    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->edittext:Landroid/widget/EditText;
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$500(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 826
    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    # invokes: Lorg/apache/cordova/inappbrowser/InAppBrowser;->getShowLocationBar()Z
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$1600(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z

    move-result v30

    if-eqz v30, :cond_9

    .line 831
    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 835
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$100(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v30

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 837
    new-instance v24, Landroid/view/WindowManager$LayoutParams;

    invoke-direct/range {v24 .. v24}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 838
    .local v24, "lp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->dialog:Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$000(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;->getWindow()Landroid/view/Window;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v30

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 839
    const/16 v30, -0x1

    move/from16 v0, v30

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 840
    const/16 v30, -0x1

    move/from16 v0, v30

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->dialog:Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$000(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;->setContentView(Landroid/view/View;)V

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->dialog:Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$000(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;->show()V

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->dialog:Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$000(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;->getWindow()Landroid/view/Window;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->openWindowHidden:Z
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$1700(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z

    move-result v30

    if-eqz v30, :cond_a

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->dialog:Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$000(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;->hide()V

    .line 850
    :cond_a
    return-void

    .line 641
    .end local v7    # "appSettings":Landroid/os/Bundle;
    .end local v8    # "appendUserAgent":Ljava/lang/String;
    .end local v13    # "client":Landroid/webkit/WebViewClient;
    .end local v14    # "close":Landroid/widget/ImageButton;
    .end local v15    # "closeIcon":Landroid/graphics/drawable/Drawable;
    .end local v16    # "closeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v17    # "closeResId":I
    .end local v19    # "enableDatabase":Z
    .end local v20    # "forward":Landroid/widget/ImageButton;
    .end local v21    # "forwardLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v22    # "fwdIcon":Landroid/graphics/drawable/Drawable;
    .end local v23    # "fwdResId":I
    .end local v24    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v26    # "overrideUserAgent":Ljava/lang/String;
    .end local v27    # "settings":Landroid/webkit/WebSettings;
    .end local v28    # "textLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_b
    const/16 v30, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 666
    .restart local v20    # "forward":Landroid/widget/ImageButton;
    .restart local v21    # "forwardLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v22    # "fwdIcon":Landroid/graphics/drawable/Drawable;
    .restart local v23    # "fwdResId":I
    :cond_c
    const/16 v30, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 714
    .restart local v14    # "close":Landroid/widget/ImageButton;
    .restart local v15    # "closeIcon":Landroid/graphics/drawable/Drawable;
    .restart local v16    # "closeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v17    # "closeResId":I
    .restart local v28    # "textLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_d
    const/16 v30, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 798
    .restart local v7    # "appSettings":Landroid/os/Bundle;
    .restart local v8    # "appendUserAgent":Ljava/lang/String;
    .restart local v13    # "client":Landroid/webkit/WebViewClient;
    .restart local v26    # "overrideUserAgent":Ljava/lang/String;
    .restart local v27    # "settings":Landroid/webkit/WebSettings;
    :cond_e
    const-string v30, "InAppBrowserStorageEnabled"

    const/16 v31, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    goto/16 :goto_3

    .line 808
    .restart local v19    # "enableDatabase":Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v30, v0

    # getter for: Lorg/apache/cordova/inappbrowser/InAppBrowser;->clearSessionCache:Z
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$1400(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z

    move-result v30

    if-eqz v30, :cond_8

    .line 809
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    goto/16 :goto_4
.end method
