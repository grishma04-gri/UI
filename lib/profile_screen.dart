import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text(
          'Nesha',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Icon(Icons.more_horiz, color: Colors.black),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // ------------------------------------------------
              // PROFILE PHOTO + POSTS / FOLLOWERS / FOLLOWING
              // ------------------------------------------------
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  // Profile picture
                  Container(
                    width: 120,
                    height: 120,
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFFD62976),
                          Color(0xFFFEDA75),
                          Color(0xFF4F5BD5),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/Moon.JPG',
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 20),

                  // Statistics
                  Expanded(
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceAround,
                      children: const [
                        ProfileStat(
                          number: '673',
                          label: 'Posts',
                        ),
                        ProfileStat(
                          number: '9 963',
                          label: 'Followers',
                        ),
                        ProfileStat(
                          number: '79',
                          label: 'Following',
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              // ------------------------------------------------
              // NAME
              // ------------------------------------------------
              const Text(
                'Nesha | Business Mentor',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              // ------------------------------------------------
              // PROFESSION
              // ------------------------------------------------
              const Text(
                'Entrepreneur',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 10),

              // ------------------------------------------------
              // BIO
              // ------------------------------------------------
              const Text(
                '• Build a profitable online business without the hustle & crazy work hours',
                style: TextStyle(
                  fontSize: 17,
                  height: 1.45,
                ),
              ),

              const SizedBox(height: 4),

              const Text(
                '• Podcast: The Simple Business Show 🎙️',
                style: TextStyle(
                  fontSize: 17,
                  height: 1.45,
                ),
              ),

              const SizedBox(height: 4),

              const Text(
                '• Free Masterclass ↓',
                style: TextStyle(
                  fontSize: 17,
                  height: 1.45,
                ),
              ),

              const SizedBox(height: 5),

              // ------------------------------------------------
              // WEBSITE
              // ------------------------------------------------
              const Text(
                'neshawoolery.com/instagram',
                style: TextStyle(
                  color: Color(0xFF42658A),
                  fontSize: 17,
                ),
              ),

              const SizedBox(height: 10),

              // ------------------------------------------------
              // FOLLOWED BY
              // ------------------------------------------------
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                      text: 'Followed by ',
                    ),
                    TextSpan(
                      text: 'tropicmediaco',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: ', ',
                    ),
                    TextSpan(
                      text: '_emeraldscity',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: ' and 20 others',
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // ------------------------------------------------
              // ACTION BUTTONS
              // ------------------------------------------------
              Row(
                children: [

                  Expanded(
                    child: ProfileButton(
                      text: 'Following',
                      icon: Icons.keyboard_arrow_down,
                    ),
                  ),

                  const SizedBox(width: 8),

                  Expanded(
                    child: ProfileButton(
                      text: 'Message',
                    ),
                  ),

                  const SizedBox(width: 8),

                  Expanded(
                    child: ProfileButton(
                      text: 'Email',
                    ),
                  ),

                  const SizedBox(width: 8),

                  Container(
                    height: 50,
                    width: 55,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade300,
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(
                      Icons.keyboard_arrow_down,
                      size: 28,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              // ------------------------------------------------
              // STORY HIGHLIGHTS
              // ------------------------------------------------
              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: const [
                  StoryHighlight(
                    color: Color(0xFFE0986D),
                    title: 'results',
                  ),
                  StoryHighlight(
                    color: Color(0xFFF2E2DA),
                    title: 'podcast',
                  ),
                  StoryHighlight(
                    color: Color(0xFFFFB5A7),
                    title: 'results',
                  ),
                  StoryHighlight(
                    color: Color(0xFF2E3B55),
                    title: 'free trainings',
                  ),
                  StoryHighlight(
                    color: Color(0xFFF2E2DA),
                    title: 'about',
                  ),
                ],
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}


// ============================================================
// PROFILE STAT
// ============================================================

class ProfileStat extends StatelessWidget {
  final String number;
  final String label;

  const ProfileStat({
    super.key,
    required this.number,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          number,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            fontSize: 17,
          ),
        ),
      ],
    );
  }
}


// ============================================================
// PROFILE BUTTON
// ============================================================

class ProfileButton extends StatelessWidget {
  final String text;
  final IconData? icon;

  const ProfileButton({
    super.key,
    required this.text,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade300,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),

          if (icon != null) ...[
            const SizedBox(width: 4),
            Icon(
              icon,
              size: 22,
            ),
          ],
        ],
      ),
    );
  }
}


// ============================================================
// STORY HIGHLIGHT
// ============================================================

class StoryHighlight extends StatelessWidget {
  final Color color;
  final String title;

  const StoryHighlight({
    super.key,
    required this.color,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 82,
          height: 82,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.grey.shade300,
              width: 2,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
          ),
        ),

        const SizedBox(height: 8),

        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}